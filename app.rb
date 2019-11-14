require 'sinatra'
require './lib/preguntontas.rb'

get '/' do
  erb :homePreguntados
end

get '/nuevaPartida' do
  @@partida = Partida_preguntontas.new
  @pregunta = @@partida.getPreguntonta
  @opciones = @@partida.getOpciones
  erb :pregunta
end

post '/pregunta' do
   @@partida.validar params["rta1"].to_i
end

post '/siguiente' do
  @preguntaActual += 1
  @@partida.cargarPreguntas @preguntaActual
  @pregunta = @@partida.getPreguntonta
  @opciones = @@partida.getOpciones
  erb :pregunta 
end


