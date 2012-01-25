require ::File.dirname(__FILE__) + "/spec_helper"

describe :params do
  include Rack::Test::Methods

  let(:app) do
    class TestApp < Yarf
      layout :none
      get '/' do
        render params.inspect
      end

      get '/:path' do
        render params.inspect
      end
    end
    TestApp.new
  end
  subject { last_response.body }

  it 'include request params' do
    get '/?foo=bar'
    should == { :foo => 'bar' }.inspect
  end

  it 'include path params' do
    get '/somepath'
    should == { :path => 'somepath' }.inspect
  end
end
