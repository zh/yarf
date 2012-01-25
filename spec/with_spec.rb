require ::File.dirname(__FILE__) + "/spec_helper"

describe :with do
  include Rack::Test::Methods

  let(:app) do
    class TestApp < Yarf
      layout :none
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
    TestApp.new
  end
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
