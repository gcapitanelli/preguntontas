Feature: Juego Preguntontas

Scenario: Ver pantalla principal
  Given entro al juego
  Then debo ver "Bienvenido/s a PrEgUnToNtAs!!!" 

Scenario: Inicio partida 
  Given inicio partida
  Then debo ver "Pregunta 1"


