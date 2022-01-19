
Dado('que eu estou na pagina principal') do
    @visit.visit_principal
end
  
Dado('escolho que estou em outra cidade') do
    @cidades.botao_outra_cidade.click
end
  
Quando('seleciono o estado {string} e a cidade {string} que eu quero acessar') do |estado, cidade|
    @cidades.titulo.text eql 'onde você tá, hein?'
    @cidades.botao_parana.click
    @cidades.botao_maringa.click
end
  
Então('devo ser redirecionado para a página correta da cidade {string}') do |cidade|
    @cidades.cidade.text eql "/ #{cidade}"
end

Dado('escolho um estado {string}') do |estado|
    @cidades.titulo.text eql 'onde você tá, hein?'
    @cidades.botao_parana.click
end
  
Dado('seleciono mais de um estado {string}') do |estado|
    @cidades.botao_minas.click
end
  
Então('eu devo ver somente as cidades do ultimo estado selecionado') do
    expect(@cidades.arcos).to have_text "Arcos"
end