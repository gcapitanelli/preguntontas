Given(/^entro al juego$/) do
  visit "/"
end

Then(/^debo ver "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Given(/^inicio partida$/) do
  visit "/nuevaPartida"
end

#
Then(/^debo ver pregunta (\d+)\)$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When (/^click boton Siguiente$/) do
  click_button("Siguiente")
end

When(/^selecciono (\d+)$/) do |opcion|
  fill_in("respuesta", :with => opcion)
end

When(/^respuesta correcta$/) do
  last_response.body.should = "Puntaje :1"
end
