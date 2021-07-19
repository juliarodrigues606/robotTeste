*** Settings ***
Library     SeleniumLibrary
Library     RobotNotifications     https://hooks.slack.com/services/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
...                                end_test     summary 
#Library     RobotNotifications     https://dealtech.webhook.office.com/webhookb2/fd5fbff6-ae6c-48b5-b88c-7f8233cb3279@d305f3c2-47c9-4a71-84bf-847098a785b1/IncomingWebhook/ee7af4e36477479d81eec108540359d1/f56417c8-db7a-42a3-a8b3-bb8b9f406824
#...                                end_test     summary 



*** Variables ***
${URL}                   https://juliarodrigues606.github.io/paginaTeste/
${BROWSER}               Chrome


*** Keywords ***
Abrir Pagina de Teste 
        Open Browser                 ${URL}      ${BROWSER}

Verificar titulo da pagina
        Title Should Be              Pagina de Teste Automação - Júlia Rodrigues
#        Title Should Be              Pagina de Teste Automação - JR
        

Fechar Navegador Web
        Close Browser
        
Emitir mensagem no slack
        Post Message To Channel      Executei minha suite de teste         icon_emoji=robot_face    username=Robot    
...                                  channel=robot-notifications

Preencher meu nome
        [Arguments]     ${name}
        Input Text      name        ${name}

Preencher meu email
        [Arguments]     ${email}
        Input Text      email        ${email}
