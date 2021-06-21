*** Settings ***
Documentation    Aqui estarão presentes todos os cenarios de teste de API

Resource       ../resources/Keywords/kws_apiautomation.robot
Suite Setup    Conectar a minha API

*** Test Cases ***
Cenario: buscar a listagem de todos os livros (GET em todos os livros)
    [Tags]                                            TESTE_1
    Requisitar todos os livros
    Conferir o status code                            200
    Conferir o reason                                 OK
    Conferir se retorna uma lista com "200" livros    

Cenario: buscar um livro (POST)
    [Tags]  TESTE_3                                        
    Cadastrar um novo livro 
    Conferir o status code                                     200
    Conferir o reason                                          OK
    Conferir se retorna todos os dados cadastrados do livro "201"

