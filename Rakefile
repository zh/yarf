require "rake/clean"
require 'rspec/core/rake_task'
require "yaml"

CLEAN.include "*.gem"

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w(-fs -c)
end
task :default => :spec

desc "Compute LOC"
task :loc do
  loc = File.read("lib/yarf.rb").split("\n").reject { |l| l =~ /^\s*\#/ || l =~ /^\s*$/ }.size
  puts "#{loc} LOC"
end

gemspec = Gem::Specification.new do |s|
  s.name        = "yarf"
  s.version     = "0.3.2"
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.summary     = "Yes Another Rack Framework"
  s.email       = "zh@zhware.net"
  s.homepage    = "http://github.com/zh/yarf"
  s.description = "A minimalist (and relatively useless) Ruby/Rack web application framework."
  s.authors     = ["Stoyan Zhekov"]
  s.require_paths = ['lib']
  s.has_rdoc    = false
  s.files       = %w(LICENSE README.md Rakefile Gemfile Gemfile.lock yarf.gemspec .rspec) + Dir["{lib,examples,spec}/**/*"]

  s.required_ruby_version = '>= 1.9.2'


  # Dependencies
  s.add_dependency    "rack"
  s.add_dependency    "erubis"
  s.add_dependency    "tilt"
  s.add_dependency    "http_router"

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rack-contrib'
  s.add_development_dependency 'thin'
  s.add_development_dependency 'warden'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'rspec'
end

namespace :gem do
  desc "Update the gemspec for GitHub's gem server"
  task :github do
    File.open("yarf.gemspec", 'w') { |f| f << YAML.dump(gemspec) }
  end
end
