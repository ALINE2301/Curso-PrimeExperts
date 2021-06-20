*** Settings ***
#Dentro estara presente informações a respeito do arquivo.
Documentation    Aqui estaram presentes todos os exercicios Prime Experts
...              focado em Imeersão com Robot Framework.

*** Variables ***
#Minha primeira variavel simples
${NOME}    Aline Carvalho

#Minha primeira varaiavel do tipo dicionario
&{PESSOA}
...    nome=aline            
...    sobrenome=carvalho    
...    idade=34
...    Cpf=123456
...    cidade=alfenas
...    cor=preta


#Minha primeira variavel do tipo lista
@{FRUTAS}
...    maça       
...    banana     
...    morango
...    uva

*** Test Case ***
Cenario: Imprimir 6 informações de usuarios
    Log To Console    ${PESSOA.nome}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${PESSOA.Cpf}
    Log To Console    ${PESSOA.cidade}
    Log To Console    ${PESSOA.cor}

Cenario: Realizar Soma
    [Tags]            SOMA
    ${RESULTADO}      Somar dois numeros    5    9
    Log To Console    ${RESULTADO}

Cenario : Meu Teste Soma
    [Tags]            Soma_2
    ${RESULTADO}      Somar dois numeros "55" e "44"
    Log To Console    ${RESULTADO} 

Cenario: Contando de 0 a 9
    [Tags]            COUNT
    FOR    ${COUNT}     IN RANGE    0    9
    Log To Console    ${COUNT}
    END

Cenario: Imprimir FRUTAS
    [Tags]            FRUTAS
    @{FRUTAS}         Create List    morango    maça    uva    abacaxi
    FOR     ${frutas}     IN             @{FRUTAS}
    Log To Console    ${frutas}
    END 

*** Keywords ***
Somar dois numeros
    [Arguments]    ${NUM_A}    ${NUM_B}             
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B}
    [Return]       ${SOMA}

Somar dois numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}     Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

*** Keywords ***
I create a user wint ${NAME}, ${SOBRENOME}, ${IDADE}, ${EMAIL}
    ${user}= User.Creat name=${NAME} login=${LOGIN}
    ${resp}= Creat User ${user}
    Set Global Variable ${resp}

Imprimir nome de paises
    @{PAISES}         Create List    Brasil    Mexico    Africa
    FOR     ${PAIS}        IN     @{PAISES}
    Log To Console    Estou no seguinte pais:    ${PAIS}
    END