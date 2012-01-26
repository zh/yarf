require ::File.dirname(__FILE__) + "/spec_helper"

describe :session do
  include Rack::Test::Methods

  let(:app) { TestApp.new }

  it 'set session' do
      get '/session/stuff'
      session[:yarf] == "stuff"
    end 

    it 'clear session' do
      get '/session/clear'
      session.should == {}
    end

end
