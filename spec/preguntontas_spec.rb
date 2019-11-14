require './lib/preguntontas.rb'

describe "Partida preguntontas" do
  it "Arranca la  partida" do
    partida = Partida_preguntontas.new
    expect(partida.resultado).to eq 0
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
end
