*Settings*
Documentation    Implementação da Rota /equipos

Library    OperatingSystem

*Keywords*
POST Equipo
    [Arguments]    ${payload}    ${token}    ${image_file}

    &{headers}    Create Dictionary    user_token=${token}

    ${bin_image}    Get Binary File      ${EXECDIR}/resources/fixtures/equipos/thumbnails/${image_file}
    &{thumbnail}    Create Dictionary    thumbnail=${bin_image}

    ${response}    POST
    ...            ${base_url}/equipos    
    ...            data=${payload}
    ...            headers=${headers}
    ...            files=${thumbnail}
    ...            expected_status=any

    [return]    ${response}