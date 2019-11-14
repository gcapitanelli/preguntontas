class Pregunta

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
      @preguntonta = "¿Cuál es el verdadero nombre de Alejandro Sanz?"
      @opciones = ["Alejandro Sánchez Pizarro", "Alejandro Sánchez Gutierrez", "Alexander Santiago Seguiz", "Alejandro Alberto Sanzón"]
      @correcta = 0
           when 3 then
         @preguntonta = "¿Cuánta leche da una vaca en su vida?"
         @opciones = ["Nada", "Mucha", "Poca", "Lo mismo que en bajada"]
         @correcta = 3
      when 4 then
         @preguntonta = "¿En qué año se estrenó la película de Disney Pinocho?"
         @opciones = ["1940", "1950", "1952", "1946"]
         @correcta = 0
      when 5 then
         @preguntonta = "¿Quién es la mascota de SEGA?"
         @opciones = ["Sonic", "Mario", "Pac Man", "Ryu"]
         @correcta = 0
      when 6 then
         @preguntonta = "¿Por cuál de estas películas ganó Clint Eastwood el premio Oscar al mejor director?"
         @opciones = ["Million Dollar Baby", "Cartas desde Iwo Jima", "Mystic River", "Los puentes de Madison"]
         @correcta = 3
      when 7 then
         @preguntonta = "¿De qué nacionalidad es la cantante Fey?"
         @opciones = ["Austriaca", "Mexicana", "Estadounidense", "Panameña"]
         @correcta = 1
      when 8 then
         @preguntonta = "¿Qué grupo cómico dobló al español a los protagonistas de Shrek? "
         @opciones = ["Martes", "Tip y Coll", "Cruz y Raya", "Los Morancos"]
         @correcta = 2
      when 9 then
         @preguntonta = "¿Cuántos colores tiene un cubo de Rubik clásico?"
         @opciones = ["4", "6", "8", "9"]
         @correcta = 1
      when 10 then
         @preguntonta = "¿En que época quedo ciego Stevie Wonder?"
         @opciones = ["En los 60's", "En la infancia", "En los 70's", "En los 80's"]
         @correcta = 1
    end
  end 
end
