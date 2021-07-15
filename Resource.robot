*** Settings ***
Library     SeleniumLibrary
Library     RobotNotifications     https://hooks.slack.com/services/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
...                                end_test     summary 


*** Variables ***
${URL}                   https://juliarodrigues606.github.io/paginaTeste/
${BROWSER}               Chrome

${WEB_HOOK_TEAMS}        


*** Keywords ***
Abrir Pagina de Teste 
        Open Browser                ${URL}      ${BROWSER}
        Title Should Be             Pagina de Teste Automação - Júlia Rodrigues
        
Fechar Navegador Web
        Close Browser

Preencher meu nome
        [Arguments]     ${name}
        Input Text      name        ${name}

Preencher meu email
        [Arguments]     ${email}
        Input Text      email        ${email}
