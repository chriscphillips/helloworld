require "sinatra"

get '/' do
	erb :home
end

post '/name_choice' do
  "Hello World"
end
