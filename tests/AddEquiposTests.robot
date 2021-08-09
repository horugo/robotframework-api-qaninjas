**Settings**
Documentation    Add Equipos Tests

Resource    ${EXECDIR}/resources/Base.robot

*Test Cases*
Add New Equipos

    ${payload}    Get Json    equipos    fender.json

    ${response}    POST Equipo    ${payload}    token    guitarra-strato.png
