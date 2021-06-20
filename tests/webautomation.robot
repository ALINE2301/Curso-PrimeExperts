*** Settings ***
Documentation    Neste arquivo estarão as Automatização do primeiro site com os fluxos
...              de automação web e seus respectivos cenários automatizados.
Resource         ../resources/keywords/kws_automation.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

