***Settings***

Library         AppiumLibrary

***Variables***


***Keywords***

Samsung Bypass
    Click Element                           id=com.sec.android.app.sbrowser:id/help_intro_legal_agree_button
    Wait Until Element Is Visible           id=com.sec.android.app.sbrowser:id/alertTitle
    Click Element                           id=android:id/button2

Browser Choice
    Click Element                           id=android:id/button_always

Chrome Bypass
    Click Element                           id=com.android.chrome:id/terms_accept
    Wait Until Element Is Visible           id=com.android.chrome:id/next_button
    Click Element                           id=com.android.chrome:id/next_button
    Wait Until Element Is Visible           id=com.android.chrome:id/negative_button
    Click Element                           id=com.android.chrome:id/negative_button

Bypass
    ${browserchoice}=                       Run Keyword And Return Status           Page Should Contain Element                id=android:id/button_always
    ${chromebypass}=                        Run Keyword And Return Status           Page Should Contain Element                id=com.android.chrome:id/fre_main_layout
    ${samsungbypass}=                       Run Keyword And Return Status           Page Should Contain Element                id=com.sec.android.app.sbrowser:id/help_intro_legal_agree_button

    Run Keyword Unless                      '${browserchoice}'=='False'             Browser Choice
    Run Keyword Unless                      '${chromebypass}'=='False'              Chrome Bypass
    Run Keyword Unless                      '${samsungbypass}'=='False'             Samsung Bypass