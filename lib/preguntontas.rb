require './lib/pregunta.rb'

class Partida_preguntontas
  def initialize
    @resultado = ""
    @contador = 0
    @pregunta = Pregunta.new  
    @preguntaActual = 1
  end

  def resultado
    @resultado 
  end

  def contador
    @contador 
  end

  def preguntaActual
    @preguntaActual 
  end

  def incrementarPreguntaActual
    @preguntaActual += 1
  end

  def getPreguntonta
    @pregunta.getPreguntonta
  end

  def getOpciones
    @pregunta.getOpciones
  end

  def cargarPreguntas nroPregunta
    @pregunta.cargarPreguntas nroPregunta
  end

  def validar (respuesta)
    if respuesta == @pregunta.getCorrecta
      @contador +=1
      @resultado = "BIEN"
    else 
      @resultado = "MAL"
    end
    return @resultado
  end

end
