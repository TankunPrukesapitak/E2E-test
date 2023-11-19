*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TC-1 Open web sites
    Open Browser    https://python-ci-cd.azurewebsites.net/    chrome
    FOR    ${i}    IN RANGE    2
        Wait Until Page Contains    Todo     30
        Click Element    //a[@href="/add"]
        Wait Until Page Contains    Save    10
        Input text    //input[@id='id_name']    tan132
        Click Element    //button[@type='submit']
        Click Element    //a[@href="/"]
        Wait Until Page Contains    tan132    10   
    END
        
