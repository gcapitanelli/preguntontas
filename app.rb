require 'sinatra'
require './lib/preguntontas.rb'

get '/' do
  erb :homePreguntados
end

get '/nuevaPartida' do
  @@partida = Partida_preguntontas.new
  run
end

post '/siguiente' do
  @@partida.validar params["respuesta"].to_i
  run
end

def run
  @@partida.incrementarPreguntaActual
  preguntaActual = @@partida.getPreguntaActual

  if preguntaActual>5
    erb :fin
  else
    @total = preguntaActual

    @@partida.cargarPreguntas preguntaActual
  
    @pregunta = @@partida.getPreguntonta
    @opciones = @@partida.getOpciones
    @puntaje = @@partida.getPuntaje
    erb :pregunta
  end
  
end
