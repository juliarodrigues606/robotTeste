*** Settings ***
Resource            Resource.robot
Test Teardown       Fechar Navegador Web

*** Test Cases ***
Cenário de teste 01 - Abrir Pagina Web
        Abrir Pagina de Teste

Cenário de teste 02 - Preencher dados
        Abrir Pagina de Teste 
        Preencher meu nome      Julia
        Preencher meu email     juliarodrigues606@gmai.com