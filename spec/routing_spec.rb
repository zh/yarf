require ::File.dirname(__FILE__) + "/spec_helper"

describe :routing do
  include Rack::Test::Methods

  let(:app) { TestApp.new }
  subject { last_response.body }

  context 'HTTP methods' do
    it 'route GET /' do
      get '/'
      should == 'get'
    end

    it 'route POST /' do
      post '/'
      should == 'post'
    end

    it 'route PUT /' do
      put '/'
      should == 'put'
    end

    it 'route DELETE /' do
      delete '/'
      should == 'delete'
    end

    it 'route DELETE with _method hack' do
      get("/?_method=delete")
      should == "delete"
    end
  end
end
