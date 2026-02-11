*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    ../demovariables.robot

*** Keywords ***
User Opens Browser and Go to URL
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3s
    Execute Javascript    window.scroll(0, 400)
    Sleep    3s

User Register
    ${firstName}    FakerLibrary.First Name
    ${lastName}    FakerLibrary.Last Name
    ${email}    FakerLibrary.Email
    ${phoneNumber}    FakerLibrary.Numerify    %%%%%%%%%%
    ${address}    FakerLibrary.Address
    ${dob}    FakerLibrary.Date    %Y %m %d
    Input Text    firstName    ${firstName}
    Sleep    2s
    Input Text    lastName    ${lastName}
    Sleep    2s
    Input Text    userEmail    ${email}
    Sleep    2s
    Click Element    //*[@id="genterWrapper"]/div[2]/div[3]/label
    Sleep    2s
    Input Text    userNumber    ${phoneNumber}
    Sleep    2s
    Click Element    //*[@id="dateOfBirthInput"]
    Sleep    2s
    Click Element    //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/button[2]
    Sleep    2s
    Click Element    //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[2]/div[3]/div[5]
    sleep    2s
    Click Element     //*[@id="subjectsContainer"]/div/div[1]
    sleep    1s
    press keys        NONE    ${subject}
    sleep    1s
    press keys        NONE    ENTER
    sleep    2s
    Click Element     //*[@id="hobbiesWrapper"]/div[2]/div[1]/label
    Sleep    2s
    Click Element     //*[@id="hobbiesWrapper"]/div[2]/div[3]/label
    sleep     2s
    Choose File    //*[@id="uploadPicture"]   ${EXECDIR}/pikapi.jpg
    sleep    3s
    Input Text    currentAddress    ${address}
    Sleep    2s
    Click Element    state
    Input Text    id=react-select-3-input    ${state}
    press keys            NONE     ENTER
    Sleep    2s
    Click Element    //*[@id="city"]/div/div[1]/div[1]
    Input Text        id=react-select-4-input    ${city}
    press keys            NONE     ENTER
    Sleep    2s
User Submit Form
    sleep    3s
    Click Element    id=submit
    Sleep    5s



