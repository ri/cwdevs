require 'sinatra'
require 'sass'
require 'json'

APP_ROOT = File.expand_path(File.dirname(__FILE__))

before do
  unless development?
    redirect "http://www.cwdevs.com#{request.fullpath}" if request.host != "www.cwdevs.com"
  end
end

get '/' do
  erb :"index.html"
end