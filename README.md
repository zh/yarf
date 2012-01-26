# YARF - Yet Another Ruby(Rack) Framework

A minimalist (and relatively useless) Ruby web applications framework.


## Features

* Small (< 100 LOC) and fast
* Powered by [Rack](https://github.com/chneukirchen/rack)
* Templates via [Tilt](https://github.com/rtomayko/tilt)
* Routing via [HTTP-Router](https://github.com/joshbuddy/http_router)
* Routes with parameters - <code>'/show/:id', '/admin/*'</code>
* Redirects with status - 301 or 302
* Global and per action layouts
* Nesting routes - <code>with '/admin' do … end</code>
* Static assets - via *Rack::Static*
* Lots of tests included - using *rspec* and *rack-test*


## Pre-requirements

* rack
* erubis
* tilt
* http_router


## Usage

Install pre-requirements:

    gem install bundler --pre  # (if not installed)
    bundle install

Example application in *myapp.rb*:

    require 'yarf'
    static "/static", Yarf.root("public")
    layout :bootstrap
    class MyApp < Yarf
      get "/" do
        render :index
      end
      get "/intro" do
        redirect_to "/readme"
      end
      get "/readme" do
        render :readme, :engine => :md
      end
      with "/admin" do
        get "/dashboard" do
          render :admin, :layout => :admin
        end
      end
    end

Rackup script *config.ru*:

    require 'myapp'
    run HttpRouter.new {
      add('/static').static(Yarf.root("public"))
      add('/*').to {|env| MyApp.new.call(env) }
    }

Use the Rackup script to launch the application:

    thin start -R config.ru -p 8080

or

    ruby myapp.rb -p 8080

## YARF in the wild

* [YARF development](https://github.com/zh/yarf)
* [YARF site](http://yarf.herokuapp.com/) itself
* [Travis CI building results](http://travis-ci.org/#!/zh/yarf)



## TODO

* support for sessions - via *Rack::Session*
* support for helpers
* embedded templates - <code>erb '<%= … %>'</code>
* more tests