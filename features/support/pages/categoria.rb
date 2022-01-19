# frozen_string_literal: true

class CategoryPage < SitePrism::Page
  element :categoria_pizza,    '[id="pizza-text"]'
  element :titulo_pizza,       '[title="Pizza"]'
  element :categoria_burger,   '[id="burger-text"]'
  element :pesquisa,           '[id="pesquisa"]'
end
