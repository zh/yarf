--- !ruby/object:Gem::Specification
name: yarf
version: !ruby/object:Gem::Version
  version: 0.5.1
  prerelease: 
platform: ruby
authors:
- Stoyan Zhekov
autorequire: 
bindir: bin
cert_chain: []
date: 2012-02-03 00:00:00.000000000 Z
dependencies:
- !ruby/object:Gem::Dependency
  name: rack
  requirement: &70309429556960 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70309429556960
- !ruby/object:Gem::Dependency
  name: erubis
  requirement: &70309429556340 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70309429556340
- !ruby/object:Gem::Dependency
  name: tilt
  requirement: &70309429555660 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70309429555660
- !ruby/object:Gem::Dependency
  name: http_router
  requirement: &70309429555040 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70309429555040
- !ruby/object:Gem::Dependency
  name: rake
  requirement: &70309429554460 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70309429554460
- !ruby/object:Gem::Dependency
  name: rack-contrib
  requirement: &70309429553680 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70309429553680
- !ruby/object:Gem::Dependency
  name: thin
  requirement: &70309429553160 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70309429553160
- !ruby/object:Gem::Dependency
  name: warden
  requirement: &70309429552420 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70309429552420
- !ruby/object:Gem::Dependency
  name: rack-test
  requirement: &70309429551840 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70309429551840
- !ruby/object:Gem::Dependency
  name: rspec
  requirement: &70309429551140 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70309429551140
description: A minimalist (and relatively useless) Ruby/Rack web application framework.
email: zh@zhware.net
executables: []
extensions: []
extra_rdoc_files: []
files:
- LICENSE
- README.md
- Rakefile
- Gemfile
- Gemfile.lock
- yarf.gemspec
- .rspec
- lib/yarf
- lib/yarf/core_ext.rb
- lib/yarf.rb
- examples/simple
- examples/simple/app.rb
- examples/simple/config.ru
- examples/simple/failure.rb
- examples/simple/Gemfile
- examples/simple/Gemfile.lock
- examples/simple/Procfile
- examples/simple/Rakefile
- examples/simple/spec
- examples/simple/spec/app_spec.rb
- examples/simple/spec/spec_helper.rb
- examples/simple/views
- examples/simple/views/_form.erb
- examples/simple/views/index.erb
- examples/simple/views/layout.erb
- examples/simple/views/login.erb
- examples/simple/views/protected.erb
- examples/simple/views/session.erb
- examples/simple/views/special.erb
- examples/simple/views/time.erb
- examples/site
- examples/site/app.rb
- examples/site/config.ru
- examples/site/Gemfile
- examples/site/Gemfile.lock
- examples/site/Procfile
- examples/site/public
- examples/site/public/css
- examples/site/public/js
- examples/site/Rakefile
- examples/site/spec
- examples/site/spec/app_spec.rb
- examples/site/spec/spec_helper.rb
- examples/site/views
- examples/site/views/index.erb
- examples/site/views/layout.erb
- examples/site/views/readme.md
- spec/params_spec.rb
- spec/routing_spec.rb
- spec/session_spec.rb
- spec/spec_helper.rb
- spec/special_spec.rb
- spec/with_spec.rb
homepage: http://github.com/zh/yarf
licenses: []
post_install_message: 
rdoc_options: []
require_paths:
- lib
required_ruby_version: !ruby/object:Gem::Requirement
  none: false
  requirements:
  - - ! '>='
    - !ruby/object:Gem::Version
      version: 1.9.2
required_rubygems_version: !ruby/object:Gem::Requirement
  none: false
  requirements:
  - - ! '>='
    - !ruby/object:Gem::Version
      version: '0'
requirements: []
rubyforge_project: 
rubygems_version: 1.8.10
signing_key: 
specification_version: 3
summary: Yes Another Rack Framework
test_files: []
