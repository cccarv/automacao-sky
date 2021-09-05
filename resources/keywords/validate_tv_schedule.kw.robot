**Settings***
Resource                                                        ${EXECDIR}/resources/base.web.robot

***Keywords***
Close The Popup If It Shows
    Click                                                       ${BUTTON_CLOSE_MODAL}

Access The Programming Page
    Click                                                       ${MENU_PROGRAMACAO}
    Wait For Elements State                                     ${LIVE_NOW_BOX}                              visible         5s

Go To The Schedule Block
    Click                                                       ${PROGRAMMING_BOX}

Click On The Live Show
    Save The Live Show Name And Hour From The Block
    Click                                                       ${PROGRESS_BAR_LIVE_SHOW}

Save The Live Show Name And Hour From The Block

    ${live_show_name_on_block} =    Get Text                    ${LIVE_SHOW_BLOCK_NAME}
    Set Suite Variable              ${live_show_name_on_block}

    ${live_show_hour_on_block} =    Get Text                    ${LIVE_SHOW_BLOCK_HOUR}
    Set Suite Variable              ${live_show_hour_on_block}

Save The Live Show Name And Hour From The Modal
    Wait For Elements State                                     ${LIVE_NOW_MODAL}                            visible         5s

    ${live_show_name_on_modal} =    Get Text                    ${LIVE_SHOW_MODAL_NAME}
    Set Suite Variable              ${live_show_name_on_modal}

    ${live_show_hour_on_modal} =    Get Text                    ${LIVE_SHOW_MODAL_HOUR}
    Set Suite Variable              ${live_show_hour_on_modal}

Validate The Live Show Data Between Block And Modal
    Save The Live Show Name And Hour From The Modal
    Should Be True                  '${live_show_name_on_block}' == '${live_show_name_on_modal}' and '${live_show_hour_on_block}' == '${live_show_hour_on_modal}'

Go To Sky Site
    Go To                                                       ${URL}          
    Close The Popup If It Shows

***Variables***
${URL}                                                          http://www.sky.com.br
${BUTTON_CLOSE_MODAL}                                           css=button[class=close]
${MENU_PROGRAMACAO}                                             css=a[href="/programacao"]
${LIVE_NOW_BOX}                                                 css=span >> text=Passando Agora
${PROGRAMMING_BOX}                                              css=.schedule-block
${PROGRESS_BAR_LIVE_SHOW}                                       css=.progress-bar-thumb
${LIVE_SHOW_BLOCK_NAME}                                         xpath=//div[@class="schedule-inner schedule-live"]//div[@class="program-schedule-content"]//h2[@class="program-schedule-title"]
${LIVE_SHOW_BLOCK_HOUR}                                         xpath=//div[@class="schedule-inner schedule-live"]//div[@class="program-schedule-content"]//div[@class="program-schedule-info"]//div[@class="program-duration"]//p
${LIVE_NOW_MODAL}                                               css=.sky-modal-program-description
${LIVE_SHOW_MODAL_NAME}                                         css=.sky-modal-program-title
${LIVE_SHOW_MODAL_HOUR}                                         css=.sky-modal-program-date-time