*** Settings ***
Resource    ./actions/keywords.robot

*** Test Cases ***
Scenario: Registration Flow
    Given User Test Browser
    When User Enters Information
    And User Click Submit

*** Keywords ***
User Test Browser
    User Opens Browser and Go to URL
User Enters Information
    User Register
User Click Submit
    User Submit Form


