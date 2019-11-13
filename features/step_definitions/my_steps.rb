Given(/^entro al juego$/) do
  visit "/"
end

Then(/^debo ver "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Given(/^inicio partida$/) do
  visit "/nuevaPartida"
end

Then(/^debo ver pregunta (\d+)\)$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When (/^click boton Responder$/) do
  click_button("Responder")
end

When(/^selecciono opcion (\d+)$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end



