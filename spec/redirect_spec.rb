require ::File.dirname(__FILE__) + "/spec_helper"

describe 'special pages' do
  include Rack::Test::Methods

  let(:app) do
    class TestApp < Yarf
      layout :none
      get '/go/to/main' do
        redirect_to '/'
      end
      get '/' do
        render 'main'
      end
    end
    TestApp.new
  end

  context 'redirect page' do
    before { get '/go/to/main' }

    it 'go to main page' do
      last_response.should be_redirect
      last_response.headers['Location'].should == '/'
    end
  end
end
