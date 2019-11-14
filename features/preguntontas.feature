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

Scenario: Respondo incorrectamente pregunta 1 
  Given inicio partida 
  When selecciono 3
  And click boton Responder 
  Then debo ver "Puntaje: 0"

Scenario: Respondo incorrectamente pregunta 2 cuando la 1 fue incorrecta
  Given inicio partida 
  And selecciono 3
  And click boton Responder 
  And click boton Siguiente
  And selecciono 1
  When click boton Responder
  Then debo ver "Puntaje: 0"

Scenario: Respondo incorrectamente pregunta 2 cuando la 1 fue correcta
  Given inicio partida 
  And selecciono 1
  And click boton Responder 
  And click boton Siguiente
  And selecciono 1
  When click boton Responder
  Then debo ver "Puntaje: 1"

Scenario: Respondo correctamente pregunta 2 cuando la 1 fue incorrecta
  Given inicio partida 
  And selecciono 3
  And click boton Responder 
  And click boton Siguiente
  And selecciono 3
  When click boton Responder
  Then debo ver "Puntaje: 1"

Scenario: Respondo correctamente pregunta 2 cuando la 1 fue correcta
  Given inicio partida 
  And selecciono 1
  And click boton Responder 
  And click boton Siguiente
  And selecciono 3
  When click boton Responder
  Then debo ver "Puntaje: 2"

