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
    case nroPregunta 
		  when 1 then
        @preguntonta = "Según Carlitos Balá ¿Que gusto tiene la sal?"
        @opciones = ["Salado", "Dulce", "Amargo", "Agridulce"]
        @correcta = 0
      when 2 then
        @preguntonta = "¿De que color es el caballo blanco de San Martin?"
        @opciones = ["Verde", "Rojo", "Blanco", "Purpura"]
        @correcta = 2 
		  when 3 then
				    @preguntonta = "¿Cuánta leche da una vaca en su vida?"
				    @opciones = ["Nada", "Mucha", "Poca", "Lo mismo que en bajada"]
				    @correcta = 3 
 			when 4 then
				    @preguntonta = "¿De que color es la yerba?"
				    @opciones = ["Blanca", "Amarilla", "Verde", "Rosa"]
				    @correcta = 2
 			when 5 then
				    @preguntonta = "¿?"
				    @opciones = ["Nada", "Mucha", "Poca", "Lo mismo que en bajada"]
				    @correcta = 0        
    end
  end 
end
