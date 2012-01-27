require ::File.expand_path('../spec_helper.rb', __FILE__)

describe 'YARF' do
  include Rack::Test::Methods

  let(:app) { YarfSite.new }
  subject { last_response }

  context 'main page' do
    before { get '/' }

    it 'display the page' do
      should be_ok
      last_response.headers["Content-Type"].should == "text/html"
    end
  end

  context 'README page' do
    before { get '/readme' }

    it 'display markdown-coded page' do
      should be_ok
      last_response.headers["Content-Type"].should == "text/html"
    end
  end

  context 'non-existing page' do
    before { get '/non-exists' }

    it 'return 404' do
      last_response.status.should == 404
    end
  end

end
