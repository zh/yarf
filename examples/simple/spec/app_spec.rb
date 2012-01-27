require ::File.expand_path('../spec_helper.rb', __FILE__)

describe 'YARF' do
  include Rack::Test::Methods
  include Warden::Test::Helpers

  let(:app) { TimeCheckerApp.new }
  subject { last_response.body }
  after{ Warden.test_reset! }

  context 'main page' do
    before { get '/' }

    it 'display the page' do
      last_response.should be_ok
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
      last_response.should be_redirect
      follow_redirect!
      should match %r/Welcome/i
    end
  end

  context 'render with views' do
    before { get '/time/now' }

    it 'render the view' do
      last_response.should be_ok
      last_response.headers["Content-Type"].should == "text/html"
      should match %r/Current time is:/i
    end
  end

  context 'route with parameter' do
    before { get '/show/1111' }

    it 'display page with ID' do
      last_response.should be_ok
      should == "<h1>Special!</h1>\nID=1111\n"
    end
  end

  context 'nested route' do
    before { get '/admin/secret' }

    it 'display admin page' do
      last_response.should be_ok
      should match %r/secret admin stuff/i
    end
  end

  context 'sessions' do
    it 'set session' do
      get '/session/stuff'
      session[:yarf] == "stuff"
    end 

    it 'clear session' do
      get '/session/clear'
      session.should == {}
    end 
  end

end
