require File.join(File.dirname(__FILE__),'app')

run HttpRouter.new {
  add('/static').static(Yarf.root("public"))
  add('/*').to {|env| YarfSite.new.call(env) }
}
