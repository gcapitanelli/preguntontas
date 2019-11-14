Feature: Juego Preguntontas

Scenario: Ver pantalla principal
  Given entro al juego
  Then debo ver "Bienvenido/s a PrEgUnToNtAs!!!" 

Scenario: Inicio partida 
  Given inicio partida
  Then debo ver "Pregunta 1"

Scenario: Respondo correctamente pregunta 1 
  Given inicio partida 
  When selecciono 1
  And click boton Responder 
  Then debo ver "Puntaje: 1"


