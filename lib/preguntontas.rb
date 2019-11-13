require './lib/pregunta.rb'

class Partida_preguntontas
  def initialize
    @resultado = 0
    @pregunta1 = Pregunta.new   
  end

  def resultado
    @resultado 
  end

  def getPreguntonta
    @pregunta1.getPreguntonta
  end

  def getOpciones
    @pregunta1.getOpciones
  end

  def validar (respuesta)
    if respuesta == @pregunta1.getCorrecta
      return "BIEN"
    else 
      return "MAL #{respuesta.class} #{@pregunta1.getCorrecta.class}"
  end
end

end
