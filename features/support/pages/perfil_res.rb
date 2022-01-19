
class RestaurantePage < SitePrism::Page
    
    element :nome_restaurante_teste, '[title="Manjerico"]'
    element :entrega,                '[id="restaurante-entrega"]'
    element :pagamento,              '[data-target="#modalPagamentos"]'
    element :dinheiro,               '[class="nome-forma-pagamento self-center large-font text-left grey-text font-main"]'
    element :id_bairro,              '#bairro-549 p '
    element :infos,                  '[data-target="#modalInfos"]'
    element :joinha,                 '[id="joinha_positivo"]'
    element :cupons,                 '[class="col-lg-9 col-md-9 col-sm-9 col-8 font-info font-main small-padding-percent-top dark-purple-text text-left"]'
    element :horario,                '[class="large-font font-main blue-text"]'
    element :favorito,               '[id="texto-favorito"]'
    element :caixa_avaliacao,        '[id="box-avaliacao"]'
    element :avaliacao_titulo,       '[class="blue-text text-center semi-bold-font no-padding-bottom font-main large-font"]'
    element :estrelas,               '[id="estrelas_avaliacoes"]'
    element :categoria_sobremesa,    '[title="sobremesas"]'
    element :primeiro_produto,       '[class="h3-celular margin-top-auto no-margin large-font semi-bold-font a"]'
    element :por_na_sacola,          '[id="addi_btn"]'
    element :quant_3,                '[id="quantidade-3"]'
end