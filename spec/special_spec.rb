require ::File.dirname(__FILE__) + "/spec_helper"

describe 'special pages' do
  include Rack::Test::Methods

  let(:app) { TestApp.new }

  context 'non-existing page' do
    before { get '/non-exists' }

    it 'return 404' do
      last_response.status == 404
    end
  end

  context 'redirect page' do
    before { get '/go/to/main' }

    it 'go to main page' do
      last_response.should be_redirect
      last_response.headers['Location'].should == '/'
    end
  end
end
