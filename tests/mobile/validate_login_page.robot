***Settings***
Resource            ../../resources/base.mobile.robot
Resource            ../../resources/keywords/validate_login_page.kw.robot

Suite Setup         Go To SKY App Login Page
Suite Teardown      Close Session

***Test Cases***
Test The Login Page With Invalid CPF
    Inform This CPF Into The Field                  123.123.123-12
    Check If The App Informs That The CPF Is Invalid