require './lib/pregunta.rb'

class Partida_preguntontas
  def initialize
    @resultado = 0
    @pregunta1 = Pregunta.new   
  end

  def resultado
    @resultado 
  end

  def validar respuesta
    if respuesta == @pregunta1.getCorrecta
      @resultado += 1
    end
  end
=begin
  def ganaB
    if @puntoB == 30
      @puntoB +=10
    else
      @puntoB +=15
    end
    if @puntoA == @puntoB
      @resultado = @puntoB.to_s + " iguales"
    else
      @resultado = @puntoA.to_s + "-" + @puntoB.to_s
    end
  end
=end
end
