require 'cgi'
require "bundler"
Bundler.setup
Bundler.require

require File.join(File.dirname(__FILE__),'app')

class FailureApp
  def call(env)
    uri = env['REQUEST_URI']
    puts 'failure: ' + env['REQUEST_METHOD'] + ' ' + uri
    [302, {'Location' => '/error?uri=' + CGI::escape(uri)}, '']
  end
end

use Rack::Session::Cookie, :key => 'my_app_key',
                           :path => '/',
                           :expire_after => 14400, # In seconds
                           :secret => 'secret_stuff'
use Rack::MethodOverride
use Warden::Manager do |manager|
  manager.default_strategies :password
  manager.failure_app = FailureApp.new
end
Warden::Manager.serialize_into_session{|id| id }
Warden::Manager.serialize_from_session{|id| id }

Warden::Strategies.add(:password) do
  def valid?
    username = params['username']
    username and username != ''
  end

  def authenticate!
    username = params['username']
    if ['alfa', 'bravo'].include?(username)
      success!(username)
    else
      fail!('could not login')
    end
  end
end

run TimeCheckerApp.new
