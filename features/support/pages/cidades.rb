# frozen_string_literal: true

class CityPage < SitePrism::Page
  element :botao_outra_cidade, '[id="buttonSelecionarCidade"]'
  element :titulo,             '[class="text-center font-main purple-text lowercase semi-bold-font title"]'
  element :botao_parana,       '[id="18"]'
  element :botao_minas,        '[id="11"]'
  element :botao_maringa,      '[href="/PR/maringa"]'
  element :arcos,              '#cidades11 a[href="/MG/arcos"]'
  element :cidade,             '[class="blue-text font-main medium-large-font left-text display-inline-block "]'
end
