#language: pt
Funcionalidade: Página de cidades
    Como dono do site aiqfome
    quero que meus cliente possam acessar a página correspondente a cidade que desejam
    para acessar os restaurantes da região escolhida

    @Cidade_padrão
    Cenário: Seleção de uma cidade
        Dado que eu estou na pagina principal
            E escolho que estou em outra cidade
        Quando seleciono o estado "Paraná" e a cidade "Maringá" que eu quero acessar
        Então devo ser redirecionado para a página correta da cidade "Maringá"

    @Estado_multi
    Cenário: Seleção de mais um estado
        Dado que eu estou na pagina principal
            E escolho que estou em outra cidade
            E escolho um estado "Paraná"
            E seleciono mais de um estado "Minas Gerais"
        Então eu devo ver somente as cidades do ultimo estado selecionado