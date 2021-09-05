***Settings***
Documentation       Teste de validação da programação ao vivo do site Sky para Desafio Accenture

Library             AutoRecorder        mode=test     monitor=1

Resource            ${EXECDIR}/resources/base.web.robot
Resource            ${EXECDIR}/resources/keywords/validate_tv_schedule.kw.robot

Suite Setup         Start Browser Session

***Test Cases***
TC001 - Live Now Validation
    Go To Sky Site
    Access The Programming Page
    Go To The Schedule Block
    Click On The Live Show
    Validate The Live Show Data Between Block And Modal
    