*** Settings ***
Resource           ../resources/main.robot
Test Setup         Dado que eu acesse o Organo
Test Teardown      Fechar o navegador
Library            Process
Library            XML

*** Variables ***

*** Test Cases ***
Verificar se ao preencher os campos do formulário corretamente os dados são inseridos na lista e se um novo card é criado no time esperado
    
    Dado que preencha os campos do formulario
    E clique no botão 'criar card'
    Então identificar o card dentro do time esperado

Verificar se é possível criar mais de um card se preencharmos os campos corretos

    Dado que preencha os campos do formulario
    E clique no botão 'criar card'
    Então identificar 3 cards no time esperado

Verificar se é possível criar um card para cada time disponível se preenchemos os campos corretamente
    Dado que preencha os campos do formulario
    Então criar e identificar 1 card em cada time disponível

*** Keywords ***