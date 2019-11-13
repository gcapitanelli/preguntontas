require 'sinatra'
require './lib/preguntontas.rb'

get '/' do
  erb :homePreguntados
end

get '/nuevaPartida' do
  @@partida = Partida_preguntontas.new
  @pregunta = @@partida.getPreguntonta
  @opciones = @@partida.getOpciones
  erb :pregunta1
end

post '/pregunta1' do
   @@partida.validar params["rta1"].to_i
end
