require "bundler"
Bundler.setup
Bundler.require

require File.join(File.dirname(__FILE__),'app')

use Rack::Session::Cookie, :key => 'my_app_key',
                           :path => '/',
                           :expire_after => 14400, # In seconds
                           :secret => 'secret_stuff'
run TimeCheckerApp.new
