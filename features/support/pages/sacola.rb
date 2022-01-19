
class SacolaPage < SitePrism::Page
    
    element :botao_sacola,    '[id="num-itens-ticket"]'
    element :ticket,          '[id="itens-no-ticket"]'
    element :botao_sim,       '[id="buttonYes"]'
    element :quant_3,         '[ class="large-font blue-text font-main "]'
    
end