***Settings***
Resource           ${EXECDIR}/resources/base.mobile.robot
Resource           ${EXECDIR}/resources/keywords/validate_login_page.kw.robot
Resource           ${EXECDIR}/resources/data/data.robot

Suite Setup         Go To SKY App Login Page
Suite Teardown      Close Session
Test Teardown       Clear Fields

***Test Cases***
TC001 - Test The Login Page With Invalid CPF
    Inform This CPF Into The Field                                      ${INVALID_CPF}
    Check If The App Informs That The CPF Is Invalid

TC002 - Test The Login Page With Invalid CNPJ
    Inform This CNPJ Into The Field                                     ${INVALID_CNPJ}
    Check If The App Informs That The CNPJ Is Invalid

TC003 - Test The Login Page With Valid CPF
    Inform This CPF Into The Field                                      ${VALID_CPF}
    Check If The App Informs That The CPF Is Valid
    Validate The Next Button

TC004 - Test The Login Page With Valid CNPJ And Invalid CPF Partner
    Inform This CNPJ Into The Field                                     ${VALID_CNPJ}
    Inform This CPF Into The Partner CPF Field                          ${INVALID_CPF}
    Check If The App Informs That The CPF Is Invalid

TC005 - Test The Login Page With Valid CNPJ And Valid CPF Partner
    Inform This CNPJ Into The Field                                     ${VALID_CNPJ}
    Inform This CPF Into The Partner CPF Field                          ${VALID_CPF}
    Check If The App Informs That The CPF Is Valid
    Validate The Next Button

TC006 - Validate Sign On Link
    Validate The Redirect Link To Sign On

TC007 - Validate Back Button
    Click On Back Button