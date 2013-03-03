require 'rubygems'
require 'sinatra'
require './lib/broem_ipsum'

get '/' do
  erb :index
end

post '/swag' do
  bro = BroemIpsum.new(params[:number].to_i)
  bro.lets_do_this
  @paragraphs = bro.paragraphs
  erb :swag
end