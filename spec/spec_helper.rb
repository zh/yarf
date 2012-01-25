$:.unshift File.dirname(__FILE__) + "/../lib"

ENV['RACK_ENV'] ||= "test"

require 'yarf'
require 'rack/test'
