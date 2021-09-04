**Settings***
Resource                                                    ${EXECDIR}/resources/base.web.robot

***Keywords***
Close The Popup If It Shows
    Click                                                   ${BUTTON_CLOSE_MODAL}

Access The Programming Page
    Click                           css=a[href="/programacao"]
    Wait For Elements State         css=span >> text=Passando Agora         visible         5s

Go To The Schedule Block
    Click                           css=.schedule-block

Click On The Live Show
    Save The Live Show Name And Hour From The Block
    Click                           css=.progress-bar-thumb

Save The Live Show Name And Hour From The Block

    ${live_show_name_on_block} =    Get Text        xpath=//div[@class="schedule-inner schedule-live"]//div[@class="program-schedule-content"]//h2[@class="program-schedule-title"]
    Set Suite Variable             ${live_show_name_on_block}
    Log To Console                  ${live_show_name_on_block}

    ${live_show_hour_on_block} =    Get Text        xpath=//div[@class="schedule-inner schedule-live"]//div[@class="program-schedule-content"]//div[@class="program-schedule-info"]//div[@class="program-duration"]//p
    Set Suite Variable             ${live_show_hour_on_block}
    Log To Console                  ${live_show_hour_on_block}

    Take Screenshot

Save The Live Show Name And Hour From The Modal
    Wait For Elements State         css=.sky-modal-program-description       visible     5s

    ${live_show_name_on_modal} =    Get Text        css=.sky-modal-program-title
    Set Suite Variable             ${live_show_name_on_modal}
    Log To Console                  ${live_show_name_on_modal}

    ${live_show_hour_on_modal} =    Get Text        css=.sky-modal-program-date-time
    Set Suite Variable             ${live_show_hour_on_modal}
    Log To Console                  ${live_show_hour_on_modal}

Validate The Live Show Data Between Block And Modal
    Save The Live Show Name And Hour From The Modal
    Should Be True                  '${live_show_name_on_block}' == '${live_show_name_on_modal}' and '${live_show_hour_on_block}' == '${live_show_hour_on_modal}'

Go To Sky Site
    Go To                           http://www.sky.com.br
    Close The Popup If It Shows
    Take Screenshot

***Variables***
${BUTTON_CLOSE_MODAL}                                       css=button[class=close]