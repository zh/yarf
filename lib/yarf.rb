require 'bundler'
Bundler.setup
Bundler.require
require File.join(File.dirname(__FILE__),'yarf','core_ext')

YARF_ROOT = ENV["YARF_ROOT"] ||= File.expand_path(Dir.pwd) unless defined?(YARF_ROOT)

class Yarf
  attr_accessor :env, :request, :params

  HTTP_METHODS = [:get, :post, :put, :delete, :head]

  @@router, @@layout, @@with = HttpRouter.new, :layout, []

  class << self
    def root(*args); File.expand_path(File.join(YARF_ROOT, *args)); end
    def env; instance_variable_get(:@env); end
    def path_params; env['rack.request.query_hash'].symbolize_keys; end
    def params; path_params.merge(env['router.params']); end
    def static(r,path); @@router.add(r).static(path); end
    def layout(name); @@layout = name; end
    def redirect_to(path,status=302); [status, {"Location"=>path}, []]end
    def session; env['rack.session'] ||= {}; end   # need Rack::Session

    def with(route, &block)
      @@with.push(route)
      block.yield
      @@with.pop
    end

    HTTP_METHODS.each do |m|
      class_eval <<-EVAL
        def #{m}(r, &b)
          @@router.#{m}(@@with * '/' + r) { |env| @env=env; instance_eval(&b) }
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
  end

  def call(env)
    @request = Rack::Request.new(env)
    @params = @request.params.symbolize_keys
    @env = env
    if @params[:_method] and HTTP_METHODS.include?(@params[:_method].downcase.to_sym)
      @env['REQUEST_METHOD'] = @params[:_method].upcase
    end
    matches, _ = @@router.recognize(@env)
    return [404,{},"Not found"] unless matches
    @@router.call(@env)
  end
end

if __FILE__ == $0
  Rack::Handler::Thin.run(Yarf.new, {:Host => "127.0.0.1", :Port => 8080})
end

