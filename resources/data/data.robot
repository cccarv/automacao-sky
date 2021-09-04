***Settings***
Library                                     OperatingSystem

***Keywords***
Get Data
    ${test_data}                            Convert Data                                                      data.json

    ${VALID_CPF}                            Set Variable                                                      ${test_data['valid-cpf']}
    ${VALID_CNPJ}                           Set Variable                                                      ${test_data['valid-cnpj']}
    ${INVALID_CPF}                          Set Variable                                                      ${test_data['invalid-cpf']}
    ${INVALID_CNPJ}                         Set Variable                                                      ${test_data['invalid-cnpj']}
    
    Set Global Variable                     ${VALID_CPF}
    Set Global Variable                     ${VALID_CNPJ}
    Set Global Variable                     ${INVALID_CPF}
    Set Global Variable                     ${INVALID_CNPJ}

Convert Data
    [Arguments]                             ${file_name}
    ${data_text}=                           Get File       ${EXECDIR}/resources/data/${file_name}
    ${data_json}                            Evaluate       json.loads($data_text)                             json
    [return]                                ${data_json}