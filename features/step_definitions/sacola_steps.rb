# frozen_string_literal: true

Quando('adiciono qualquer item') do
  @restaurante.categoria_sobremesa.click
  first('[class="h3-celular margin-top-auto no-margin large-font semi-bold-font a"]',
        text: 'brownie com nutella (180g)').click
  @restaurante.por_na_sacola.click
end

Quando('acesso a sacola de compras') do
  @sacola.botao_sacola.click
end

Então('devo ver um item na sacola') do
  expect(page).to have_selector(:id, 'itens-no-ticket')
end

Então('devo remover algum dos itens') do
  first('[alt="ícone de lixo"]').click
  @sacola.botao_sim.click
  expect(page).to have_no_selector(:id, 'num-itens-ticket')
end

Então('devo aumentar a quantidade de algum item') do
  first('[alt="ícone de lápis"]').click
  @restaurante.quant_3.click
  @restaurante.por_na_sacola.click
  expect(@sacola.quant_3.text).to eql '3x'
end
