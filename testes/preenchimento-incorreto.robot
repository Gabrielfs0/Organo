*** Settings ***
Resource         ../resource/main.robot

Test Setup       Dado que eu acesse o Organo
Task Teardown    Fechar o navegador

*** Variables ***
${BOTAO_CARD}    id:form-botao

*** Test Cases ***
Verificar se quando um campo obrigatório não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    Dado que eu clique no botao "Criar Card"
    Entao sistema deve apresentar mensagem de campo obrigatório

