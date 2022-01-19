# Automação de testes do Aiqfome - website

[![NPM](https://img.shields.io/npm/l/react)](https://github.com/Brunogeraldo/Automa-de-testes-do-site-Lolja/blob/master/LICENSE)

# Sobre o projeto

É um projeto front-end, com o objetivo de testar as funcionalidades do site Aiqfome, utilizando BDD(Desenvolvimento orientado a testes) e a linguagem de programação ruby para realizar esses testes. Após cada teste é possível receber relatórios detalhados com screenshot de cada teste feito, utilizando o Allure framework.

# Tecnologias utilizadas

- Ruby
- Capybara
- Cucumber
- Allure Framework

# Como executar o projeto

```
# clonar repositório em alguma pasta da sua preferência 
git clone <https://github.com/devsuperior/sds1-wmazoni>

# entrar na pasta web do projeto
cd web

# instalar gems
bundle install

# executar o projeto
cucumber

```

## Allure Framework e servidor de relatório:

Para instalar o allure segue o manual oficial com cada passo:

[https://docs.qameta.io/allure/](https://docs.qameta.io/allure/)

Para conseguir o relatório depois da instalação:

pré-requisito: java 

```
# entrar na pasta web do projeto
cd web

# executar o projeto
cucumber

# executar o comando
Allure serve logs\

```

### Localizando as screenshot nos relatórios

1. Selecione a aba suites
    
    ![Untitled](https://user-images.githubusercontent.com/93891156/145625449-08f86a35-de7b-41e1-bbe8-ffef9294cd6e.png)
    
2. Escolha qual suite que deseja ver
    
   ![Untitled 1](https://user-images.githubusercontent.com/93891156/145625716-d1d8e4bc-b7cc-4348-af84-282691edac6a.png)
    
3. Selecione o teste que deseja ver
    
    ![Untitled 2](https://user-images.githubusercontent.com/93891156/145625822-479d9c1b-8d2c-4413-ac18-d48d2a283a62.png)
    
4. Em tear down, clique em after hooks e depois em screenshot (para visualizar a imagem inteira, basta clicar na imagem abaixo)
    
    ![Untitled 3](https://user-images.githubusercontent.com/93891156/145625971-4f80847c-ded7-4b7c-8f45-2163fe7ddcc1.png)
    

# Autor

Bruno Geraldo Lima
