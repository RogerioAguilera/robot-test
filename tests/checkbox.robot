*** Settings ***

Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variables ***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]        


*** Test Cases ***
Marcando opção com ID
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor} 
    Checkbox Should be Selected     ${check_thor}                           
    Close Browser

Marcando opção com CSS Selector
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should be Selected     ${check_iron}
    Close Browser


Marcando opção com Xpath
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should be Selected     ${check_panther}
    Close Browser

