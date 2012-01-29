require 'bundler'
Bundler.setup
Bundler.require
require File.join(File.dirname(__FILE__),'yarf','core_ext')

YARF_ROOT = ENV["YARF_ROOT"] ||= File.expand_path(Dir.pwd) unless defined?(YARF_ROOT)

class Yarf
  attr_accessor :request, :params

  HTTP_METHODS = [:get, :post, :put, :delete, :head]

  @@router, @@layout, @@with, @@env = HttpRouter.new, :layout, [], {}

  class << self
    attr_accessor :env, :layout

    let(:q_hash) { env['rack.request.query_hash'] ||= {} }
    let(:f_hash) { env['rack.request.form_hash'] ||= {} }
    let(:path_params) { q_hash.symbolize_keys }
    let(:form_params) { f_hash.symbolize_keys }
    let(:params) { form_params.merge(path_params.merge(env['router.params'])) }
    let(:session) { env['rack.session'] ||= {} }   # need Rack::Session
    let(:warden) { env['warden'] ||= {} } # need Warden
    let(:layout) { |name| @@layout = name }
    let(:static) { |route,path| @@router.add(route).static(path) }

    def root(*args); File.expand_path(File.join(YARF_ROOT, *args)); end
    def redirect_to(path,status=302); [status, {"Location"=>path}, []]end

    def with(route, &block)
      @@with.push(route)
      block.yield
      @@with.pop
    end

    HTTP_METHODS.each do |m|
      class_eval <<-EVAL
        def #{m}(r, &b)
          @@router.#{m}(@@with * '/' + r) { |env| @@env=env; instance_eval(&b) }
        end
      EVAL
    end

    def render(*args, &block)
      @response = Rack::Response.new
      options = args.last.is_a?(Hash) ? args.pop : {}
      @response.status = options.delete(:status) || 200
      engine = options.delete(:engine) || :erb
      @content = args.last.is_a?(String) ? args.last : theme(args.last.to_s, engine)
      layout = options.delete(:layout) || @@layout
      @content = theme(layout) unless layout == :none
      @response.headers.merge!(options)
      @response.headers["Content-Length"] ||= @content.size.to_s
      @response.headers["Last-Modified"]  ||= Time.now.httpdate
      @response.body = [@content]
      @response.finish
    end

    def theme(name, engine=:erb)
      path = Yarf.root("views", name.to_s)
      Tilt.new("#{path}.#{engine.to_s}").render(self)
    end

    def partial(name, engine, opts={})
      path = Yarf.root("views", "_#{name.to_s}")
      locals = {name.to_sym=>opts.delete(:with)}.merge!(opts)
      Tilt.new("#{path}.#{engine.to_s}").render(self, locals)
    end
  end

  def call(env)
    @request = Rack::Request.new(env)
    @params = @request.params.symbolize_keys
    self.class.env = env
    if @params[:_method] and HTTP_METHODS.include?(@params[:_method].downcase.to_sym)
      self.class.env['REQUEST_METHOD'] = @params[:_method].upcase
    end
    matches, _ = @@router.recognize(self.class.env)
    return [404,{},"Not found"] unless matches
    @@router.call(self.class.env)
  end
end

if __FILE__ == $0
  Rack::Handler::Thin.run(Yarf.new, {:Host => "127.0.0.1", :Port => 8080})
end

