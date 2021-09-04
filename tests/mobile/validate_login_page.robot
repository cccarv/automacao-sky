***Settings***

Resource        ../../resources/base.robot
Resource        ../../resources/keywords/validate_login_page.kw.robot

Suite Setup     Go To SKY App Login Page
Test Teardown   Close Session

***Test Cases***
Test The Login Page With Invalid CPF
    Inform This CPF Into The Field                  12312312312
    Check If The Field Informs That The CPF Is Invalid