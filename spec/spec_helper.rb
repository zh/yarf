$:.unshift File.dirname(__FILE__) + "/../lib"

ENV['RACK_ENV'] ||= "test"

require 'yarf'
require 'rack/test'

def session
  last_request.env['rack.session']
end

class TestApp < Yarf
  layout :none

  get '/go/to/main' do
    redirect_to '/'
  end

  get '/' do
    render 'get'
  end

  post "/" do
    render "post"
  end

  put "/" do
    render "put"
  end

  delete "/" do
    render "delete"
  end

  get '/params' do
    render params.inspect
  end

  get '/params/:path' do
    render params.inspect
  end

  with '/nested' do
    get '/get' do
      render "get"
    end

    with 'double' do
      get '/get' do
        render "again"
      end
    end
  end

  with "/session" do
    get "/clear" do
      session.clear
      redirect_to "/"
    end

    get "/:value" do
      session[:yarf] = params[:value]
      render "session"
    end
  end
end
