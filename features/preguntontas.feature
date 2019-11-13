Feature: Juego Preguntontas

Scenario: Ver pantalla principal
  Given entro al juego
  Then debo ver "Bienvenido/s a PrEgUnToNtAs!!!" 

Scenario: Inicio partida 
  Given inicio partida
  Then debo ver pregunta 1)

Scenario: Respondo correctamente pregunta 1 
  Given inicio partida 
  When selecciono opcion 1
  And click boton Responder 
  Then debo ver "CORRECTO!!"

  
