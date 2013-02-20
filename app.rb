require 'sinatra'
require 'sass'
require 'json'

APP_ROOT = File.expand_path(File.dirname(__FILE__))

get '/' do
  
  erb :"index.html"
end