*** Settings ***
Resource   ../Keywords/Dream11.robot
Test Setup    Launch Dream11 App
Test Teardown    Close Application

*** Test Cases ***
Scenario Name : Create Dream11 Cricket Team
    Given Login to the Application
    When Dream11 Home Page Is Displayed
    Then Create Dream11 Cricket Team
    And Validate All The Team Players
