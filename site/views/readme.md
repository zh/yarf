# YARF - Yet Another Ruby(Rack) Framework

A minimalist (and relatively useless) Ruby web applications framework


## Features

* Small (< 100 LOC) and fast
* Powered by [Rack](https://github.com/chneukirchen/rack)
* Templates via [Tilt](https://github.com/rtomayko/tilt)
* Routing via [HTTP-Router](https://github.com/joshbuddy/http_router)
* Routes with parameters - <code>'/show/:id', '/admin/*'</code>
* Redirects with status - 301 or 302
* Global and per action layouts
* Nesting routes - <code>with '/admin' do get '/users' do …</code>
* Static assets - via *Rack::Static*
* Lots of tests included - using *rspec* and *rack-test*


## Pre-requirements

* rack
* erubis
* tilt
* http_router


## Usage

Starting via Rackup script

    run HttpRouter.new {
      add('/static').static(Yarf.root("public"))
      add('/*').to {|env| MyApp.new.call(env) }
    }

Use the Rackup script to launch the sample application:

    cd examples
    bundle install
    thin start -R config.ru -p 8080

or

    ruby app.rb -p 8080