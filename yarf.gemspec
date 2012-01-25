--- !ruby/object:Gem::Specification
name: yarf
version: !ruby/object:Gem::Version
  version: 0.0.1
  prerelease: 
platform: ruby
authors:
- Stoyan Zhekov
autorequire: 
bindir: bin
cert_chain: []
date: 2012-01-24 00:00:00.000000000 Z
dependencies:
- !ruby/object:Gem::Dependency
  name: rack
  requirement: &70215006312480 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70215006312480
- !ruby/object:Gem::Dependency
  name: erubis
  requirement: &70215006311560 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70215006311560
- !ruby/object:Gem::Dependency
  name: tilt
  requirement: &70215006310440 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70215006310440
- !ruby/object:Gem::Dependency
  name: rake
  requirement: &70215006309100 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70215006309100
- !ruby/object:Gem::Dependency
  name: thin
  requirement: &70215006307860 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70215006307860
- !ruby/object:Gem::Dependency
  name: erubis
  requirement: &70215006322780 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70215006322780
- !ruby/object:Gem::Dependency
  name: tilt
  requirement: &70215006321480 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70215006321480
- !ruby/object:Gem::Dependency
  name: rack-test
  requirement: &70215006320300 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70215006320300
- !ruby/object:Gem::Dependency
  name: rspec
  requirement: &70215006318940 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70215006318940
description: A minimalist (and relatively useless) Ruby/Rack web application framework.
email: zh@zhware.net
executables: []
extensions: []
extra_rdoc_files:
- README
files:
- README
- Rakefile
- yarf.gemspec
- lib/yarf
- lib/yarf/core_ext.rb
- lib/yarf.rb
homepage: http://github.com/zh/yarf
licenses: []
post_install_message: 
rdoc_options:
- --main
- README
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
