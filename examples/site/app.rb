require 'yarf'

class YarfSite < Yarf
  get "/" do
    render :index
  end

  get "/readme" do
    render :readme, :engine => :md
  end

  get "/docs" do
    render 'TODO'
  end
end

Rack::Handler::Thin.run(YarfSite.new, {:Host => "127.0.0.1", :Port => 8080}) if __FILE__ == $0
