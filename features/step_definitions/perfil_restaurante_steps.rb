
Quando('pesquiso e seleciono o restaurante {string}') do |restaurante|
    @categoria.pesquisa.click
    @categoria.pesquisa.set restaurante
    first("[title='#{restaurante}']").click
end
  
Quando('acesso a parte de entregas') do
    @restaurante.entrega.click
end
  
Então('devo achar o bairro {string}') do |bairro|
    @categoria.pesquisa.set bairro
    primeiro = first('#bairro-549 p')
    expect(primeiro.text).to eql bairro
end

Quando('acesso a parte de pagamento') do
    @restaurante.pagamento.click
    
end
  
Então('devo ver forma de pagamento {string}') do |dinheiro|
    primeiro = first("[class='nome-forma-pagamento self-center large-font text-left grey-text font-main']")
    expect(primeiro.text).to eql dinheiro
end

Quando('acesso a parte de info do restaurante') do
    @restaurante.infos.click
end
  
Então('devo ver o horario de funcionamento e se aceita cupons') do
    expect(@restaurante.cupons.text).to eql "ela aceita cupons :D"
    expect(@restaurante.horario.text).to eql "horário de funcionamento:"
end

Quando('adiciono o restaurante ao favorito') do
    @restaurante.favorito.click
end
  
Então('devo ver a tela de login') do
    expect(page).to have_selector(:id, 'login')
end

Quando('acesso a pagina de avaliação') do                                    
    @restaurante.caixa_avaliacao.click
end                                                                          
                                                                               
Então('devo ver a avaliação') do                                             
    expect(@restaurante.avaliacao_titulo.text).to eql  "Vê se a galera tá curtindo esse restaurante"
    expect(page).to have_selector(:id, 'estrelas_avaliacoes')
end                                                                          