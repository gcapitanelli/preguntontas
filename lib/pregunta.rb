class Pregunta
  def initialize
     cargarPreguntas 1
  end

  def getCorrecta
    @correcta 
  end

  def getPreguntonta
    @preguntonta 
  end

  def getOpciones
    @opciones 
  end 
  
  def cargarPreguntas nroPregunta
    case nroPregunta when 1 then
        @preguntonta = "Según Carlitos Balá ¿Que gusto tiene la sal?"
        @opciones = ["Salado", "Dulce", "Amargo", "Agridulce"]
        @correcta = 0
      when 2 then
        @preguntonta = "¿De que color es el caballo blanco de San Martin?"
        @opciones = ["Verde", "Rojo", "Blanco", "Purpura"]
        @correcta = 2        
    end
  end 
end
