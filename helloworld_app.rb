require "sinatra"

get '/' do
	erb :home
end

post '/name_choice' do
  fname = params[:fname]
  redirect 'result?fname=' + fname
end

get '/result' do
    fname = params[:fname]
	erb :result, :locals => {:fname => fname}
end	


