***Settings***
Resource        ${EXECDIR}/resources/base.mobile.robot
Resource        ${EXECDIR}/resources/data/data.robot
Library         OperatingSystem

***Keywords***
Close Session
    Close Application

Set Variables
    Get Data

Go To App Main Screen
    Wait Until Element Is Visible           ${BOTAO_CONTINUAR_PARA_SKY}
    Click Element                           ${BOTAO_CONTINUAR_PARA_SKY}
    Wait Until Element Is Visible           ${MENU_PLAY}
    Click Element                           ${MENU_PLAY}


Press Like On Highlights App Screen
    Wait Until Element Is Visible           ${MENU_DESTAQUES}
    Click Element                           ${MENU_DESTAQUES}
    Wait Until Element Is Visible           ${BOTAO_LIKE}
    Click Element                           ${BOTAO_LIKE}

Click On Login
    Wait Until Element Is Visible           ${BOTAO_LOGAR}
    Click Element                           ${BOTAO_LOGAR}
    Wait Until Element Is Visible           ${TEXTO_ACESSO}

Validate The Default Login Page
    Element Should Be Visible               ${TEXTO_ACESSO}
    Element Should Be Visible               ${BOTAO_VOLTAR}
    Element Should Be Visible               ${TEXTO_TOPO}
    Element Text Should Be                  ${TEXTO_TOPO}                                       Para utilizar o app, primeiro informe os dados do assinante SKY.
    Element Should Be Visible               ${TEXTO_CPF_CNPJ}
    Element Text Should Be                  ${TEXTO_CPF_CNPJ}                                   CPF ou CNPJ do assinante SKY
    Element Should Be Visible               ${CAMPO_CPF_CNJP}
    Element Text Should Be                  ${CAMPO_CPF_CNJP}                                   Digite seu CPF/CNPJ
    Element Should Be Visible               ${BOTAO_PROXIMO} 
    Element Attribute Should Match          ${BOTAO_PROXIMO}                                    clickable                             false
    Element Should Be Visible               ${TEXTO_PROXIMO_TENTAR_OUTROS}
    Element Text Should Be                  ${TEXTO_PROXIMO_TENTAR_OUTROS}                      Próximo
    Element Should Be Visible               ${TEXTO_NAO_SOU_CLIENTE}
    Element Text Should Be                  ${TEXTO_NAO_SOU_CLIENTE}                            Não sou cliente SKY.
    Element Should Be Visible               ${LINK_QUERO_ASSINAR}
    Element Text Should Be                  ${LINK_QUERO_ASSINAR}                               Quero Assinar

Go To SKY App Login Page
    Mobile Local
    Set Variables
    Go To App Main Screen
    Press Like On Highlights App Screen
    Click On Login
    Validate The Default Login Page

Input CPF or CNPJ
    [Arguments]                             ${cpfcnpj}
    Input Value                             ${CAMPO_CPF_CNJP}                                   ${cpfcnpj}
    Click Element                           ${TEXTO_CPF_CNPJ}
    Hide Keyboard

Input Partner CPF
    [Arguments]                             ${partnercpf}
    Wait Until Element Is Visible           ${CAMPO_PARTNER_CPF}
    Element Text Should Be                  ${CAMPO_PARTNER_CPF}                                Digite seu CPF
    Element Text Should Be                  ${TEXTO_PARTNER_CPF}                                CPF de um dos sócios deste CNPJ
    Input Value                             ${CAMPO_PARTNER_CPF}                                ${partnercpf}
    Click Element                           ${TEXTO_CPF_CNPJ}
    Hide Keyboard

Inform This CPF Into The Field
    [Arguments]                             ${cpfcnpj}
    Input CPF or CNPJ                       ${cpfcnpj}

Inform This CNPJ Into The Field
    [Arguments]                             ${cpfcnpj}
    Input CPF or CNPJ                       ${cpfcnpj}

Inform This CPF Into The Partner CPF Field
    [Arguments]                             ${partnercpf}
    Input Partner CPF                       ${partnercpf}    

Check If The App Informs That The CPF Is Invalid
    Wait Until Element Is Visible           ${MSG_VALIDACAO_CPF_CNPJ}
    Element Text Should Be                  ${MSG_VALIDACAO_CPF_CNPJ}                           CPF inválido. Digite novamente.
    Element Attribute Should Match          ${BOTAO_PROXIMO}                                    clickable                             false

Check If The App Informs That The CNPJ Is Invalid
    Wait Until Element Is Visible           ${MSG_VALIDACAO_CPF_CNPJ}
    Element Text Should Be                  ${MSG_VALIDACAO_CPF_CNPJ}                           CNPJ inválido. Digite novamente.
    Element Attribute Should Match          ${BOTAO_PROXIMO}                                    clickable                             false

Check If The App Informs That The CPF Is Valid
    Wait Until Element Is Visible           ${OK_CHECK_IMAGE}

Validate The Next Button
    Click Element                           ${TEXTO_PROXIMO_TENTAR_OUTROS}
    Wait Until Element Is Visible           ${ALERT_NAO_ASSINANTE}
    Element Text Should Be                  ${TEXTO_ALERT_NAO_ASSINANTE}                        Ops, você não é um\n assinante SKY!
    Element Text Should Be                  ${TEXTO_PROXIMO_TENTAR_OUTROS}                      Tentar outros dados
    Click Element                           ${TEXTO_PROXIMO_TENTAR_OUTROS}

Validate The Redirect Link To Sign On
    Click Element                           ${LINK_QUERO_ASSINAR}
    Wait Until Page Contains                SKY
    Element Text Should Be                  ${BARRA_URL}                                        ${LINK_ASSINE_SKY}
    Press Keycode                           4
    Wait Until Element Is Visible           ${TEXTO_TOPO}

Click On Back Button
    Wait Until Element Is Visible           ${BOTAO_VOLTAR}
    Click Element                           ${BOTAO_VOLTAR}
    Wait Until Element Is Visible           ${MENU_DESTAQUES}

Clear Fields
    ${needtoclean} =                        Run Keyword And Return Status                       Page Should Contain Element             ${CAMPO_CPF_CNJP}
    Run Keyword If                          '${needtoclean}'=='True'                            Clear Text                              ${CAMPO_CPF_CNJP}                      

***Variables***
${BOTAO_CONTINUAR_PARA_SKY}                 id=br.com.sky.selfcare:id/2131427895
${BOTAO_LIKE}                               id=br.com.sky.selfcare:id/2131428657
${BOTAO_LOGAR}                              xpath=//android.widget.Button[@text='LOGAR']
${CAMPO_CPF_CNJP}                           id=br.com.sky.selfcare:id/2131428587
${CAMPO_PARTNER_CPF}                        xpath=//android.widget.EditText[@text='Digite seu CPF']
${TEXTO_PARTNER_CPF}                        id=br.com.sky.selfcare:id/2131431712
${BOTAO_PROXIMO}                            id=br.com.sky.selfcare:id/2131427871
${TEXTO_PROXIMO_TENTAR_OUTROS}              id=br.com.sky.selfcare:id/2131427887
${TEXTO_ACESSO}                             xpath=//android.widget.TextView[@text='Acesso']
${BOTAO_VOLTAR}                             xpath=//android.widget.ImageButton
${TEXTO_TOPO}                               id=br.com.sky.selfcare:id/2131429282
${TEXTO_CPF_CNPJ}                           id=br.com.sky.selfcare:id/2131431094
${TEXTO_NAO_SOU_CLIENTE}                    id=br.com.sky.selfcare:id/2131429530
${LINK_QUERO_ASSINAR}                       id=br.com.sky.selfcare:id/2131427661
${MSG_VALIDACAO_CPF_CNPJ}                   id=br.com.sky.selfcare:id/2131428695
${OK_CHECK_IMAGE}                           id=br.com.sky.selfcare:id/2131428857
${ALERT_NAO_ASSINANTE}                      id=br.com.sky.selfcare:id/2131428276
${TEXTO_ALERT_NAO_ASSINANTE}                id=br.com.sky.selfcare:id/2131431556
${BARRA_URL}                                id=com.android.chrome:id/url_bar
${LINK_ASSINE_SKY}                          assine.sky.com.br/?utm_source=app_sky&utm_medium=own&utm_campaign=sky_institucional
${MENU_DESTAQUES}                           id=br.com.sky.selfcare:id/2131429982
${MENU_PLAY}                                id=br.com.sky.selfcare:id/2131429984