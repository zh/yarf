require File.join(File.dirname(__FILE__),'..','lib','yarf')

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

  get "/show/:id" do
    render "ID=#{params[:id]}", :layout => :special
  end

  with "/admin" do
    get "/secret" do
      render "secret admin stuff"
    end
  end
end

Rack::Handler::Thin.run(TimeCheckerApp.new, {:Host => "127.0.0.1", :Port => 8080}) if __FILE__ == $0
