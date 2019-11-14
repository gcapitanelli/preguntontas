require './lib/preguntontas.rb'

describe "Partida preguntontas" do
  it "Arranca la  partida" do
    partida = Partida_preguntontas.new
    expect(partida.contador).to eq 0
  end

  it "Respuesta correcta" do
    partida = Partida_preguntontas.new
    partida.validar 0
    expect(partida.resultado) == "BIEN"
  end

  it "Respuesta incorrecta" do
    partida = Partida_preguntontas.new
    partida.validar 3
    expect(partida.resultado) == "MAL"
  end

  it "Incrementa resultado" do
    partida = Partida_preguntontas.new
    partida.validar 0
    expect(partida.contador).to eq 1
  end

  it "No incrementa resultado" do
    partida = Partida_preguntontas.new
    partida.validar 3
    expect(partida.contador).to eq 0
  end

  it "Cargar nueva pregunta" do
    partida = Partida_preguntontas.new
    partida.cargarPreguntas 2
    expect(partida.getPreguntonta) == "¿De que color es el caballo blanco de San Martin?"
  end
end
