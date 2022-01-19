#language: pt
Funcionalidade: barra de categoria
    Como dono do site aiqfome
    quero que meus cliente possam escolher a categoria de comida que desejam
    para acessar os restaurantes correspondentes

    @1_categoria
    Cenario: selecionar um elemento na barra de categoria
        Dado que eu estou na pagina da cidade "maringa"
        Quando seleciono a categoria
        Então devo ver os elementos compatíveis

    @2_categorias
    Cenario: selecionar mais de uma categoria
        Dado que eu estou na pagina da cidade "maringa"
        Quando seleciono uma categoria e outra categoria
        Então devo ver os elementos da ultima categoria 