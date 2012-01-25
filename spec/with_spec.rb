require ::File.dirname(__FILE__) + "/spec_helper"

describe :with do
  include Rack::Test::Methods

  let(:app) { TestApp.new }
  subject { last_response.body }

  it 'allow nesting with' do
    get '/nested/get'
    should == "get"
  end

  it 'allow nesting multiple withs' do
    get '/nested/double/get'
    should == "again"
  end
end
