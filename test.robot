*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TC-1 Open web sites
    Open Browser    https://ci-cd-test-obxb.onrender.com/    chrome
    FOR    ${i}    IN RANGE    2
        Wait Until Page Contains    Todo     10
        Click Element    //a[@href="/add"]
        Wait Until Page Contains    Save    10
        Click Element    //a[@href="/?all=1"]
        Wait Until Page Contains    tan132    10   
    END
        
