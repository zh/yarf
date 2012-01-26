--- !ruby/object:Gem::Specification
name: yarf
version: !ruby/object:Gem::Version
  version: 0.2.2
  prerelease: 
platform: ruby
authors:
- Stoyan Zhekov
autorequire: 
bindir: bin
cert_chain: []
date: 2012-01-26 00:00:00.000000000 Z
dependencies:
- !ruby/object:Gem::Dependency
  name: rack
  requirement: &70165375537260 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70165375537260
- !ruby/object:Gem::Dependency
  name: erubis
  requirement: &70165375536240 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70165375536240
- !ruby/object:Gem::Dependency
  name: tilt
  requirement: &70165375535500 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70165375535500
- !ruby/object:Gem::Dependency
  name: http_router
  requirement: &70165376112700 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70165376112700
- !ruby/object:Gem::Dependency
  name: rake
  requirement: &70165376111560 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70165376111560
- !ruby/object:Gem::Dependency
  name: thin
  requirement: &70165376110440 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70165376110440
- !ruby/object:Gem::Dependency
  name: rack-test
  requirement: &70165376109640 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70165376109640
- !ruby/object:Gem::Dependency
  name: rspec
  requirement: &70165376108640 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70165376108640
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
- examples/app.rb
- examples/config.ru
- examples/Gemfile
- examples/Gemfile.lock
- examples/Procfile
- examples/Rakefile
- examples/spec
- examples/spec/app_spec.rb
- examples/spec/spec_helper.rb
- examples/views
- examples/views/index.erb
- examples/views/layout.erb
- examples/views/special.erb
- examples/views/time.erb
- spec/params_spec.rb
- spec/routing_spec.rb
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
