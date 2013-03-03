require 'rubygems'
require 'sinatra'
require './lib/jb_ipsum'

get '/' do
  erb :index
end

post '/swag' do
  baby = JBIpsum.new(params[:paragraphs].to_i)
  @paragraphs = baby.lets_do_this
  erb :swag
end