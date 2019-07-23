
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'welcame'
end

get '/hello' do
    #localhost:4567/hello?name=sabo
    name = params[:name]
    'Hello' + name
  end

  get '/user/:user_name' do
    #localhost:4567/user/ken
    user_name = params[:user_name]
    "<h1>User:  #{user_name}!</h1>"
  end

  get '/time' do
    Time.now.to_s
  end