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
  @pregunta = @@partida.getPreguntonta
  @opciones = @@partida.getOpciones
	@contador = @@partida.contador
  	erb :pregunta
end

post '/siguiente' do
  @preguntaActual += 1
  @@partida.cargarPreguntas @preguntaActual
  @pregunta = @@partida.getPreguntonta
  @opciones = @@partida.getOpciones
  erb :pregunta 
end


