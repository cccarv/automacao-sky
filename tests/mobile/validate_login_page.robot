***Settings***

Resource        ../../resources/base.robot
Resource        ../../resources/keywords/validate_login_page.kw.robot

Test Teardown   Close Session

***Test Cases***
Click On Like And Validate The Login Page
    Press Like On Initial App Screen
    Click On Login
    Validate The Login Screen