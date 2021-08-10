**Settings**
Documentation    Add Equipos Tests

Resource    ${EXECDIR}/resources/Base.robot

*Test Cases*
Add New Equipo

    ${token}    Get token    sambora@bonjovi.com    pwd123

    ${payload}     Get Json       equipos       fender.json
    ${response}    POST Equipo    ${payload}    ${token}       guitarra-strato.png
