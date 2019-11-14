require './lib/preguntontas.rb'

describe "Partida preguntontas" do
  it "Arranca la  partida" do
    partida = Partida_preguntontas.new
    expect(partida.getPuntaje).to eq 0
  end

  it "Respuesta correcta" do
    partida = Partida_preguntontas.new
    partida.validar 0
    expect(partida.getResultado) == "BIEN"
  end

  it "Respuesta incorrecta" do
    partida = Partida_preguntontas.new
    partida.validar 3
    expect(partida.getResultado) == "MAL"
  end

  it "Incrementa resultado" do
    partida = Partida_preguntontas.new
    partida.validar 0
    expect(partida.getPuntaje) == 1
  end

  it "No incrementa resultado" do
    partida = Partida_preguntontas.new
    partida.validar 3
    expect(partida.getPuntaje).to eq 0
  end

  it "Cargar nueva pregunta" do
    partida = Partida_preguntontas.new
    partida.cargarPreguntas 2
    expect(partida.getPreguntonta) == "¿De que color es el caballo blanco de San Martin?"
  end
end
