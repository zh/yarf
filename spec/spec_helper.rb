$:.unshift File.dirname(__FILE__) + "/../lib"

ENV['RACK_ENV'] ||= "test"

require 'yarf'
require 'rack/test'

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
end
