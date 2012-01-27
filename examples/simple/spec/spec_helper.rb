ENV['RACK_ENV'] ||= "test"

require File.join(File.dirname(__FILE__),'..','app')
require 'rack/test'

def session
  last_request.env['rack.session']
end
