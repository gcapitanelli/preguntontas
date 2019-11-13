require 'sinatra'

get '/' do
  erb :homePreguntados
end

get '/nuevaPartida' do
  erb :pregunta1
end

post '/pregunta1' do
  "CORRECTO!!"
end
