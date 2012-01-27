require File.join(File.dirname(__FILE__),'..','..','lib','yarf')

class TimeCheckerApp < Yarf
  get "/" do
    @title = "YARF"
    render :index
  end

  get "/time/now" do
    render :time
  end

  get "/go/to/main" do
    redirect_to "/"
  end

  get '/error' do
    uri = params[:uri]
    render "Access to '#{uri}' denied. Try <a href=\"/login?goto=#{uri}\">Login</a> first."
  end

  get "/show/:id" do
    render "ID=#{params[:id]}", :layout => :special
  end

  get '/protected' do
    warden.authenticate!
    @greeting = "logged in as #{warden.user}"
    render :protected
  end

  get '/login' do
    @goto = params[:goto] || "/"
    @error_style = params[:failure] ? 'style="background: red"' : ''
    render :login
  end

  post '/login' do
    goto = params[:goto] || "/"
    redirect_to warden.authenticate ? goto : "/login?failure=1"
  end

  get '/logout' do
    warden.logout
    redirect_to '/'
  end

  with "/admin" do
    get "/secret" do
      render "secret admin stuff.<br/>\nBack to <a href=\"/\">home</a>."
    end
  end

  with "/session" do
    get "/clear" do
      session.clear
      redirect_to "/"
    end

    get "/:value" do
      session[:yarf] = params[:value]
      render :session
    end
  end
end

Rack::Handler::Thin.run(TimeCheckerApp.new, {:Host => "127.0.0.1", :Port => 8080}) if __FILE__ == $0
