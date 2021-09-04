***Settings***
Resource        ../base.mobile.robot

***Keywords***
Close Session
    Close Application

Go To App Main Screen
    Wait Until Element Is Visible           id=br.com.sky.selfcare:id/2131427895
    Click Element                           id=br.com.sky.selfcare:id/2131427895
    Wait Until Element Is Visible           id=br.com.sky.selfcare:id/2131429984
    Click Element                           id=br.com.sky.selfcare:id/2131429984


Press Like On Highlights App Screen
    Wait Until Element Is Visible           id=br.com.sky.selfcare:id/2131429982
    Click Element                           id=br.com.sky.selfcare:id/2131429982
    Wait Until Element Is Visible           id=br.com.sky.selfcare:id/2131428657
    Click Element                           id=br.com.sky.selfcare:id/2131428657

Click On Login
    Wait Until Element Is Visible           id=android:id/button1
    Click Element                           id=android:id/button1
    Wait Until Element Is Visible           id=br.com.sky.selfcare:id/2131431253

Validate The Default Login Page
    Text Should Be Visible                  Acesso
    Element Should Be Visible               id=br.com.sky.selfcare:id/2131431253
    Element Should Be Visible               id=br.com.sky.selfcare:id/2131429282
    Element Text Should Be                  id=br.com.sky.selfcare:id/2131429282                Para utilizar o app, primeiro informe os dados do assinante SKY.
    Element Should Be Visible               id=br.com.sky.selfcare:id/2131431094
    Element Text Should Be                  id=br.com.sky.selfcare:id/2131431094                CPF ou CNPJ do assinante SKY
    Element Should Be Visible               id=br.com.sky.selfcare:id/2131428587
    Element Text Should Be                  id=br.com.sky.selfcare:id/2131428587                Digite seu CPF/CNPJ
    Element Should Be Visible               id=br.com.sky.selfcare:id/2131427871
    Element Attribute Should Match          id=br.com.sky.selfcare:id/2131427871                clickable                             false
    Element Should Be Visible               id=br.com.sky.selfcare:id/2131427887
    Element Text Should Be                  id=br.com.sky.selfcare:id/2131427887                Próximo
    Element Should Be Visible               id=br.com.sky.selfcare:id/2131429530
    Element Text Should Be                  id=br.com.sky.selfcare:id/2131429530                Não sou cliente SKY.
    Element Should Be Visible               id=br.com.sky.selfcare:id/2131427661
    Element Text Should Be                  id=br.com.sky.selfcare:id/2131427661                Quero Assinar

Go To SKY App Login Page
    Mobile Local
    Go To App Main Screen
    Press Like On Highlights App Screen
    Click On Login
    Validate The Default Login Page

Input CPF or CNPJ
    [Arguments]                             ${cpfcnpj}
    Input Value                             id=br.com.sky.selfcare:id/2131428587                ${cpfcnpj}
    Click Element                           id=br.com.sky.selfcare:id/2131427871
    Hide Keyboard

Inform This CPF Into The Field
    [Arguments]                             ${cpfcnpj}
    Input CPF or CNPJ                       ${cpfcnpj}    

Check If The App Informs That The CPF Is Invalid
    Wait Until Element Is Visible           id=br.com.sky.selfcare:id/2131428695
    Element Text Should Be                  id=br.com.sky.selfcare:id/2131428695                CPF inválido. Digite novamente.
    Element Attribute Should Match          id=br.com.sky.selfcare:id/2131427871                clickable                             false
    #Get Element Attribute                   id=br.com.sky.selfcare:id/2131427871                clickable