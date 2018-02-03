require "sinatra"
require_relative "helloworld.rb"

get '/' do
	erb :home
end

post '/name_choice' do
	fname = params[:fname]
	redirect 'result?fname=' + fname 
end

get '/result' do
	fname = params[:fname]
	fmovie = params[:fmovie]
	erb :result, :locals => {:fname => fname, :fmovie => fmovie}
end






