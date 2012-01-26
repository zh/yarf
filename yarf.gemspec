--- !ruby/object:Gem::Specification
name: yarf
version: !ruby/object:Gem::Version
  version: 0.3.1
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
  requirement: &70232595053900 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70232595053900
- !ruby/object:Gem::Dependency
  name: erubis
  requirement: &70232595052200 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70232595052200
- !ruby/object:Gem::Dependency
  name: tilt
  requirement: &70232595050140 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70232595050140
- !ruby/object:Gem::Dependency
  name: http_router
  requirement: &70232595084760 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :runtime
  prerelease: false
  version_requirements: *70232595084760
- !ruby/object:Gem::Dependency
  name: rake
  requirement: &70232595082760 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70232595082760
- !ruby/object:Gem::Dependency
  name: thin
  requirement: &70232595082020 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70232595082020
- !ruby/object:Gem::Dependency
  name: rack-test
  requirement: &70232595080820 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70232595080820
- !ruby/object:Gem::Dependency
  name: rspec
  requirement: &70232595079240 !ruby/object:Gem::Requirement
    none: false
    requirements:
    - - ! '>='
      - !ruby/object:Gem::Version
        version: '0'
  type: :development
  prerelease: false
  version_requirements: *70232595079240
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
- examples/coverage
- examples/coverage/assets
- examples/coverage/assets/0.5.3
- examples/coverage/assets/0.5.3/app.js
- examples/coverage/assets/0.5.3/fancybox
- examples/coverage/assets/0.5.3/fancybox/blank.gif
- examples/coverage/assets/0.5.3/fancybox/fancy_close.png
- examples/coverage/assets/0.5.3/fancybox/fancy_loading.png
- examples/coverage/assets/0.5.3/fancybox/fancy_nav_left.png
- examples/coverage/assets/0.5.3/fancybox/fancy_nav_right.png
- examples/coverage/assets/0.5.3/fancybox/fancy_shadow_e.png
- examples/coverage/assets/0.5.3/fancybox/fancy_shadow_n.png
- examples/coverage/assets/0.5.3/fancybox/fancy_shadow_ne.png
- examples/coverage/assets/0.5.3/fancybox/fancy_shadow_nw.png
- examples/coverage/assets/0.5.3/fancybox/fancy_shadow_s.png
- examples/coverage/assets/0.5.3/fancybox/fancy_shadow_se.png
- examples/coverage/assets/0.5.3/fancybox/fancy_shadow_sw.png
- examples/coverage/assets/0.5.3/fancybox/fancy_shadow_w.png
- examples/coverage/assets/0.5.3/fancybox/fancy_title_left.png
- examples/coverage/assets/0.5.3/fancybox/fancy_title_main.png
- examples/coverage/assets/0.5.3/fancybox/fancy_title_over.png
- examples/coverage/assets/0.5.3/fancybox/fancy_title_right.png
- examples/coverage/assets/0.5.3/fancybox/fancybox-x.png
- examples/coverage/assets/0.5.3/fancybox/fancybox-y.png
- examples/coverage/assets/0.5.3/fancybox/fancybox.png
- examples/coverage/assets/0.5.3/fancybox/jquery.fancybox-1.3.1.css
- examples/coverage/assets/0.5.3/fancybox/jquery.fancybox-1.3.1.pack.js
- examples/coverage/assets/0.5.3/favicon_green.png
- examples/coverage/assets/0.5.3/favicon_red.png
- examples/coverage/assets/0.5.3/favicon_yellow.png
- examples/coverage/assets/0.5.3/highlight.css
- examples/coverage/assets/0.5.3/highlight.pack.js
- examples/coverage/assets/0.5.3/jquery-1.6.2.min.js
- examples/coverage/assets/0.5.3/jquery.dataTables.min.js
- examples/coverage/assets/0.5.3/jquery.timeago.js
- examples/coverage/assets/0.5.3/jquery.url.js
- examples/coverage/assets/0.5.3/loading.gif
- examples/coverage/assets/0.5.3/magnify.png
- examples/coverage/assets/0.5.3/smoothness
- examples/coverage/assets/0.5.3/smoothness/images
- examples/coverage/assets/0.5.3/smoothness/images/ui-bg_flat_0_aaaaaa_40x100.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-bg_flat_75_ffffff_40x100.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-bg_glass_55_fbf9ee_1x400.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-bg_glass_65_ffffff_1x400.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-bg_glass_75_dadada_1x400.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-bg_glass_75_e6e6e6_1x400.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-bg_glass_95_fef1ec_1x400.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-bg_highlight-soft_75_cccccc_1x100.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-icons_222222_256x240.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-icons_2e83ff_256x240.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-icons_454545_256x240.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-icons_888888_256x240.png
- examples/coverage/assets/0.5.3/smoothness/images/ui-icons_cd0a0a_256x240.png
- examples/coverage/assets/0.5.3/smoothness/jquery-ui-1.8.4.custom.css
- examples/coverage/assets/0.5.3/stylesheet.css
- examples/coverage/index.html
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
- examples/views/session.erb
- examples/views/special.erb
- examples/views/time.erb
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
