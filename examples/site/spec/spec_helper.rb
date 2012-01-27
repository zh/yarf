ENV['RACK_ENV'] ||= "test"

require File.join(File.dirname(__FILE__),'..','app')
require 'rack/test'
