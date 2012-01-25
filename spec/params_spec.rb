require ::File.dirname(__FILE__) + "/spec_helper"

describe :params do
  include Rack::Test::Methods

  let(:app) { TestApp.new }
  subject { last_response.body }

  it 'include request params' do
    get '/params?foo=bar'
    should == { :foo => 'bar' }.inspect
  end

  it 'include path params' do
    get '/params/somepath'
    should == { :path => 'somepath' }.inspect
  end
end
