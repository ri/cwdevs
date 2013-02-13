require 'sinatra'
require 'sass'

APP_ROOT = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH << "#{APP_ROOT}/lib"

get '/' do
  erb :"index.html"
end