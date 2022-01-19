#language: pt
Funcionalidade: Perfil do restaurante
    Como dono do site aiqfome
    quero que meus cliente consigam acessar o perfil do restaurante desejado
    para escolherem a comida do restaurante e fazerem a compra

    @bairros
    Cenario: ver bairros disponíveis
        Dado que eu estou na pagina da cidade "maringa"
        Quando pesquiso e seleciono o restaurante "Manjerico"
            E acesso a parte de entregas
        Então devo achar o bairro "Jardim Lagoa Dourada"

    @forma_pagamento
    Cenario: Forma de pagamento
        Dado que eu estou na pagina da cidade "maringa"
        Quando pesquiso e seleciono o restaurante "Manjerico"
            E acesso a parte de pagamento
        Então devo ver forma de pagamento "Dinheiro"

    @mais_info
    Cenario: mais infos
        Dado que eu estou na pagina da cidade "maringa"
        Quando pesquiso e seleciono o restaurante "Manjerico"
            E acesso a parte de info do restaurante
        Então devo ver o horario de funcionamento e se aceita cupons

    @avalia_res
    Cenario: avaliação do restaurante
        Dado que eu estou na pagina da cidade "maringa"
        Quando pesquiso e seleciono o restaurante "Manjerico"
            E acesso a pagina de avaliação
        Então devo ver a avaliação

    @add_fav
    Cenario: add favoritos sem estar logado
        Dado que eu estou na pagina da cidade "maringa"
        Quando pesquiso e seleciono o restaurante "Manjerico"
            E adiciono o restaurante ao favorito
        Então devo ver a tela de login

    @pagamento_multi
    Esquema do Cenario: Forma de pagamento multi
        Dado que eu estou na pagina da cidade "maringa"
        Quando pesquiso e seleciono o restaurante "<restaurante_input>"
            E acesso a parte de pagamento
        Então devo ver forma de pagamento "Dinheiro"

        Exemplos:
            | restaurante_input        |
            | Docela Panificadora      |
            | Hachimitsu               |
            | Jéssica Alves Brigaderia |
            | Vila Verde               |


