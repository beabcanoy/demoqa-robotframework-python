*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://demoqa.com/automation-practice-form
${browser}    chrome

*** Keywords ***
User Opens Browser and Go to URL
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3s

User Input First Name
    Input Text    firstName    Beverly
    Sleep    2s
User Input Last Name
    Input Text    lastName    Canoy
    Sleep    2s
User Input Email
    Input Text    userEmail    beverly.canoy0410@gmail.com
    Sleep    2s
User Click Radio Button
    Click Element    //*[@id="genterWrapper"]/div[2]/div[2]/label
    Sleep    2s
User Input Mobile
    Input Text    userNumber    9358432276
    Sleep    2s
User Input Birthdate
    Click Element     //*[@id="dateOfBirthInput"]
    Sleep    1s
    Click Element     //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[1]/select
    sleep    1s
    Click Element     //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[1]/select/option[4]
    sleep    1s
    Click Element     //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/select
    sleep    1s
    Click Element     //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/select/option[103]
    sleep    1s
    Click Element     //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div[4]
    sleep    2s
User Input Subject
    Click Element     //*[@id="subjectsContainer"]/div/div[1]
    sleep    1s
    press keys        NONE    Computer Science
    sleep    1s
    press keys        NONE    ENTER
    sleep    2s
User Click Hobbies
    Click Element     //*[@id="hobbiesWrapper"]/div[2]/div[1]/label
    Sleep    2s
    Click Element     //*[@id="hobbiesWrapper"]/div[2]/div[3]/label
    sleep     2s
User Click Choose File
    Choose File    //*[@id="uploadPicture"]   ${EXECDIR}/pikapi.jpg
    sleep    3s
User Input Current Address
    Input Text    currentAddress    Cugman, Cagayan De Oro City, Misamis Oriental
    Sleep    2s
User Click State
    Click Element    state
    Input Text    id=react-select-3-input    Uttar Pradesh
    press keys            NONE     ENTER
    Sleep    2s
User Click City
    Click Element    //*[@id="city"]/div/div[1]/div[1]
    Input Text        id=react-select-4-input    Merrut
    press keys            NONE     ENTER
    Sleep    2s
User Click Submit
    sleep    3s
    Click Element    id=submit
    Sleep    5s



*** Test Cases ***
Registration Flow
    User Opens Browser and Go to URL
    User Input First Name
    User Input Last Name
    User Input Email
    User Click Radio Button
    User Input Mobile
    User Input Birthdate
    User Input Subject
    User Click Hobbies
    User Click Choose File
    User Input Current Address
    User Click State
    User Click City
    User Click Submit