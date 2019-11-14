require './lib/pregunta.rb'

class Partida_preguntontas
  
  def initialize
    @pregunta = Pregunta.new 
    @resultado = ""
    @preguntaActual = 0
    @puntaje = 0
  end

  def getResultado
    @resultado 
  end

  def getPreguntaActual
    @preguntaActual 
  end

  def incrementarPreguntaActual
    @preguntaActual += 1
  end

  def getPuntaje
    @puntaje
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

  def validar respuestaElegida
    if (respuestaElegida-1) == @pregunta.getCorrecta
      @puntaje +=1
      @resultado = "BIEN"
    else 
      @resultado = "MAL"
    end
    return @resultado
  end

end
