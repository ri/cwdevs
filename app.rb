require 'sinatra'
require 'sass'
require 'json'

APP_ROOT = File.expand_path(File.dirname(__FILE__))

events = JSON.parse(File.read("#{APP_ROOT}/public/data/events.json"))
puts events["item"].first["title"]

get '/' do
  today = Time.now
  events = events.reject { }
  
  erb :"index.html"
end