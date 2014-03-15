require 'rubygems'
require 'sinatra'
require './lib/jb_ipsum'

get '/' do
  send_file File.expand_path('index.html', settings.public_folder)
end

get '/swag' do
  baby = JBIpsum.new(1)
  @paragraphs = baby.return_requested_paragraphs
  erb :swag
end

post '/swag' do
  baby = JBIpsum.new(params[:paragraphs].to_i)
  @paragraphs = baby.return_requested_paragraphs
  erb :swag
end

not_found do
  send_file File.expand_path('404.html', settings.public_folder)
end
