require ::File.expand_path('../spec_helper.rb', __FILE__)

describe 'YARF' do
  include Rack::Test::Methods

  let(:app) { TimeCheckerApp.new }
  subject { last_response }

  context 'main page' do
    before { get '/' }

    it 'should display the page' do
      should be_ok
      last_response.headers["Content-Type"].should == "text/html"
      should match %r/Welcome/i
    end
  end

  context 'non-existing page' do
    before { get '/non-exists' }

    it 'return 404' do
      last_response.status.should == 404
    end
  end

  context 'redirect page' do
    before { get '/go/to/main' }

    it 'go to main page' do
      should be_redirect
      follow_redirect!
      last_response.body.should match %r/Welcome/i
    end
  end

  context 'render with views' do
    before { get '/time/now' }

    it 'should render the view' do
      should be_ok
      last_response.headers["Content-Type"].should == "text/html"
      should match %r/Current time is:/i
    end
  end

  context 'route with parameter' do
    before { get '/show/1111' }

    it 'should display page with ID' do
      should be_ok
      last_response.body.should == "<h1>Special!</h1>\nID=1111\n"
    end
  end

  context 'nested route' do
    before { get '/admin/secret' }

    it 'should display admin page' do
      should be_ok
      last_response.body.should == "secret admin stuff\n"
    end
  end

end
