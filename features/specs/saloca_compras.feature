#language: pt
Funcionalidade: Sacola de compras
    Como dono do site aiqfome
    quero que meus cliente consigam acessar a sacola de compras
    para verificar, remover, adicionar ou finalizar a compra

    @um_sacola
    Cenario: dois pedido na sacola
        Dado que eu estou na pagina da cidade "maringa"
        Quando pesquiso e seleciono o restaurante "Manjerico"
            E adiciono qualquer item
            E acesso a sacola de compras
        Então devo ver um item na sacola

    @remover_sacola
    Cenario: retirando da sacola
        Dado que eu estou na pagina da cidade "maringa"
        Quando pesquiso e seleciono o restaurante "Manjerico"
            E adiciono qualquer item
            E acesso a sacola de compras
        Então devo remover algum dos itens

    @add_mais
    Cenario: aumentando a quantidade de produtos
        Dado que eu estou na pagina da cidade "maringa"
        Quando pesquiso e seleciono o restaurante "Manjerico"
            E adiciono qualquer item
            E acesso a sacola de compras
        Então devo aumentar a quantidade de algum item