*** Settings ***
Library    AppiumLibrary
Variables    ../Resources/Testdata.py
Variables    ../Resources/WebElements.py

*** Variables ***
${Screenshots_Path}     C://Users/TMPL-FA-1879/PycharmProjects/Dream11_MobileApp/Screenshots
${Wicket_Keeper_1}
${Wicket_Keeper_2}
${Batter_1}
${Batter_2}
${Batter_3}
${Batter_4}
${All_Rounders_1}
${All_Rounders_2}
${Bowlers_1}
${Bowlers_2}
${Bowlers_3}

*** Keywords ***
Launch Dream11 App
    Open Application    http://localhost:4723/wd/hub    platformName=Android      platformVersion=13   deviceName=RZCT811AN0T      appPackage=com.dream11.fantasy.cricket.football.kabaddi    appActivity=com.app.dream11.dream11.SplashActivity      automationName=Uiautomator2   autoGrantPermissions=true


Login to the Application
    Wait Until Element Is Visible    ${Select_App_Language_Continue}     ${Timeout}
    Capture Page Screenshot     ${Screenshots_Path}/Select App Language.png
    Click Element    ${Select_App_Language_Continue}
    Wait Until Element Is Visible    ${Already_a_user_LogIn}    ${Timeout}
    Click Element    ${Already_a_user_LogIn}
    Wait Until Element Is Visible    ${Login_Page_Enter_Mobile_No_Field}
    Capture Page Screenshot     ${Screenshots_Path}/Dream11_Login_Page.png
    Input Text    ${Login_Page_Enter_Mobile_No_Field}   ${Login_Page_Enter_Mobile_No}
    Click Element    ${Login_Page_I_Confirm_IM_18_Checkbox}
    Click Element     ${Login_Page_Next}
    Wait Until Element Is Visible    ${Login_Page_Auto_Read_OTP_Allow}  ${Timeout}
    Click Element    ${Login_Page_Auto_Read_OTP_Allow}
    Capture Page Screenshot     ${Screenshots_Path}/Dream11_Login_WithOTP.png


Dream11 Home Page Is Displayed
    Wait Until Element Is Visible    ${Dream11_Home_Page}   ${Timeout}
    Element Should Be Visible    ${Dream11_Home_Page}
    Capture Page Screenshot     ${Screenshots_Path}/Verify Dream11 Home Page.png


Create Dream11 Cricket Team
    Click Element    ${Home_Page_Cricket}
    Click Element    ${Select_Upcoming_Match}
    Wait Until Element Is Visible    ${Entry}   ${Timeout}
    Click Element    ${Entry}
    Wait Until Element Is Visible    ${Entry_For_Free_Contestant}   ${Timeout}
    Click Element    ${Entry_For_Free_Contestant}
    Capture Page Screenshot     ${Screenshots_Path}/Join Match.png
    Click Element    ${Join_Match}
#    Wait Until Element Is Visible    ${Create_Team}   ${Timeout}
#    Click Element    ${Create_Team}
    Wait Until Element Is Visible    ${Wicket_Keeper_1_Field}   ${Timeout}
    Capture Page Screenshot     ${Screenshots_Path}/Players Selectio Page.png
#########################Selection of Wicket keepers to the Team ############################
    ${Wicket_Keeper_1}=   Get Text    ${Wicket_Keeper_1_Field}
    Log    ${Wicket_Keeper_1}
    Set Suite Variable    ${Wicket_Keeper_1}
    Click Element    ${Wicket_Keeper_1_Add}
    ${Wicket_Keeper_2}=   Get Text    ${Wicket_Keeper_2_Field}
    Log    ${Wicket_Keeper_2}
    Set Suite Variable    ${Wicket_Keeper_2}
    Click Element    ${Wicket_Keeper_2_Add}
    Capture Page Screenshot     ${Screenshots_Path}/Selection of Wicket keeper to the Team.png
#########################Selection of Batters to the Team ####################################
    Click Element    ${Batter}
    Wait Until Element Is Visible    ${Batter_1_Field}   ${Timeout}
    ${Batter_1}=   Get Text    ${Batter_1_Field}
    Log    ${Batter_1}
    Set Suite Variable    ${Batter_1}
    Click Element    ${Batter_1_Add}
    ${Batter_2}=   Get Text    ${Batter_2_Field}
    Log    ${Batter_2}
    Set Suite Variable    ${Batter_2}
    Click Element    ${Batter_2_Add}
    ${Batter_3}=   Get Text    ${Batter_3_Field}
    Log    ${Batter_3}
    Set Suite Variable    ${Batter_3}
    Click Element    ${Batter_3_Add}
    ${Batter_4}=   Get Text    ${Batter_4_Field}
    Log    ${Batter_4}
    Set Suite Variable    ${Batter_4}
    Click Element    ${Batter_4_Add}
    Capture Page Screenshot     ${Screenshots_Path}/Selection of Batter to the Team.png
#########################Selection of All Rounders to the Team ####################################
    Click Element    ${All_Rounders}
    Wait Until Element Is Visible    ${All_Rounders_1_Field}   ${Timeout}
    ${All_Rounders_1}=   Get Text    ${All_Rounders_1_Field}
    Log    ${All_Rounders_1}
    Set Suite Variable    ${All_Rounders_1}
    Click Element    ${All_Rounders_1_Add}
    ${All_Rounders_2}=   Get Text    ${All_Rounders_2_Field}
    Log    ${All_Rounders_2}
    Set Suite Variable    ${All_Rounders_2}
    Click Element    ${All_Rounders_2_Add}
    Capture Page Screenshot     ${Screenshots_Path}/Selection of All Rounders to the Team.png
#########################Selection of Bowlers to the Team ####################################
    Click Element    ${Bowlers}
    Wait Until Element Is Visible    ${Bowlers_1_Field}   ${Timeout}
    ${Bowlers_1}=   Get Text    ${Bowlers_1_Field}
    Log    ${Bowlers_1}
    Set Suite Variable    ${Bowlers_1}
    Click Element    ${Bowlers_1_Add}
    ${Bowlers_2}=   Get Text    ${Bowlers_2_Field}
    Log    ${Bowlers_2}
    Set Suite Variable    ${Bowlers_2}
    Click Element    ${Bowlers_2_Add}
    ${Bowlers_3}=   Get Text    ${Bowlers_3_Field}
    Log    ${Bowlers_3}
    Set Suite Variable    ${Bowlers_3}
    Click Element    ${Bowlers_3_Add}
    Capture Page Screenshot     ${Screenshots_Path}/Selection of Bowlers to the Team.png
#########################Selection of Captain and Vice Captain for the Team ##############################
    Click Element    ${Next}
    Wait Until Element Is Visible    ${Choose_Captain_And_ViceCaptain_Page}     ${Timeout}
    Click Element    ${Select_Captain}
    Click Element    ${Select_ViceCaptain}
    Capture Page Screenshot     ${Screenshots_Path}/Selection of Captain and Vice Captain for the Team.png


Validate All The Team Players
    Click Element    ${Preview_Players}
    Wait Until Element Is Visible    ${Team_LineUp_Page}    ${Timeout}
#########################Validate selected Wicket keepers in the team #####################
    ${Wicket_Keeper_1_Validate}=   Get Text    ${Wicket_Keeper_1_Validate_Field}
    Log    ${Wicket_Keeper_1_Validate}
    Should Be Equal    ${Wicket_Keeper_1_Validate}      ${Wicket_Keeper_1}
    Run Keyword If    '${Wicket_Keeper_1_Validate}' == '${Wicket_Keeper_1}'
    ...    Log    ${Wicket_Keeper_1_Validate} is matching with ${Wicket_Keeper_1}
    ...    ELSE    Log    ${Wicket_Keeper_1_Validate} is not matching with ${Wicket_Keeper_1}
    ${Wicket_Keeper_2_Validate}=   Get Text    ${Wicket_Keeper_2_Validate_Field}
    Log    ${Wicket_Keeper_2_Validate}
    Should Be Equal    ${Wicket_Keeper_2_Validate}      ${Wicket_Keeper_2}
    Run Keyword If    '${Wicket_Keeper_2_Validate}' == '${Wicket_Keeper_2}'
    ...    Log    ${Wicket_Keeper_2_Validate} is matching with ${Wicket_Keeper_2}
    ...    ELSE    Log    ${Wicket_Keeper_2_Validate} is not matching with ${Wicket_Keeper_2}
#########################Validate selected Batters in the team ############################
    ${Batter_1_Validate}=   Get Text    ${Batter_1_Validate_Field}
    Log    ${Batter_1_Validate}
    Should Be Equal    ${Batter_1_Validate}      ${Batter_1}
    Run Keyword If    '${Batter_1_Validate}' == '${Batter_1}'
    ...    Log    ${Batter_1_Validate} is matching with ${Batter_1}
    ...    ELSE    Log    ${Batter_1_Validate} is not matching with ${Batter_1}
    ${Batter_2_Validate}=   Get Text    ${Batter_2_Validate_Field}
    Log    ${Batter_2_Validate}
    Should Be Equal    ${Batter_2_Validate}      ${Batter_2}
    Run Keyword If    '${Batter_2_Validate}' == '${Batter_2}'
    ...    Log    ${Batter_2_Validate} is matching with ${Batter_2}
    ...    ELSE    Log    ${Batter_2_Validate} is not matching with ${Batter_2}
    ${Batter_3_Validate}=   Get Text    ${Batter_3_Validate_Field}
    Log    ${Batter_3_Validate}
    Should Be Equal    ${Batter_3_Validate}      ${Batter_3}
    Run Keyword If    '${Batter_3_Validate}' == '${Batter_3}'
    ...    Log    ${Batter_3_Validate} is matching with ${Batter_3}
    ...    ELSE    Log    ${Batter_3_Validate} is not matching with ${Batter_3}
    ${Batter_4_Validate}=   Get Text    ${Batter_4_Validate_Field}
    Log    ${Batter_4_Validate}
    Should Be Equal    ${Batter_4_Validate}      ${Batter_4}
    Run Keyword If    '${Batter_4_Validate}' == '${Batter_4}'
    ...    Log    ${Batter_4_Validate} is matching with ${Batter_4}
    ...    ELSE    Log    ${Batter_4_Validate} is not matching with ${Batter_4}
#########################Validate selected All Rounders in the team ############################
    ${All_Rounders_1_Validate}=   Get Text    ${All_Rounders_1_Validate_Field}
    Log    ${All_Rounders_1_Validate}
    Should Be Equal    ${All_Rounders_1_Validate}      ${All_Rounders_1}
    Run Keyword If    '${All_Rounders_1_Validate}' == '${All_Rounders_1}'
    ...    Log    ${All_Rounders_1_Validate} is matching with ${All_Rounders_1}
    ...    ELSE    Log    ${All_Rounders_1_Validate} is not matching with ${All_Rounders_1}
    ${All_Rounders_2_Validate}=   Get Text    ${All_Rounders_2_Validate_Field}
    Log    ${All_Rounders_2_Validate}
    Should Be Equal    ${All_Rounders_2_Validate}      ${All_Rounders_2}
    Run Keyword If    '${All_Rounders_2_Validate}' == '${All_Rounders_2}'
    ...    Log    ${All_Rounders_2_Validate} is matching with ${All_Rounders_2}
    ...    ELSE    Log    ${All_Rounders_2_Validate} is not matching with ${All_Rounders_2}
#########################Validate selected All Bowlers in the team ############################
    ${Bowlers_1_Validate}=   Get Text    ${Bowlers_1_Validate_Field}
    Log    ${Bowlers_1_Validate}
    Should Be Equal    ${Bowlers_1_Validate}      ${Bowlers_1}
    Run Keyword If    '${Bowlers_1_Validate}' == '${Bowlers_1}'
    ...    Log    ${Bowlers_1_Validate} is matching with ${Bowlers_1}
    ...    ELSE    Log    ${Bowlers_1_Validate} is not matching with ${Bowlers_1}
    ${Bowlers_2_Validate}=   Get Text    ${Bowlers_2_Validate_Field}
    Log    ${Bowlers_2_Validate}
    Should Be Equal    ${Bowlers_2_Validate}      ${Bowlers_2}
     Run Keyword If    '${Bowlers_2_Validate}' == '${Bowlers_2}'
    ...    Log    ${Bowlers_2_Validate} is matching with ${Bowlers_2}
    ...    ELSE    Log    ${Bowlers_2_Validate} is not matching with ${Bowlers_2}
    ${Bowlers_3_Validate}=   Get Text    ${Bowlers_3_Validate_Field}
    Log    ${Bowlers_3_Validate}
    Should Be Equal    ${Bowlers_3_Validate}      ${Bowlers_3}
     Run Keyword If    '${Bowlers_3_Validate}' == '${Bowlers_3}'
    ...    Log    ${Bowlers_3_Validate} is matching with ${Bowlers_3}
    ...    ELSE    Log    ${Bowlers_3_Validate} is not matching with ${Bowlers_3}
    Capture Page Screenshot     ${Screenshots_Path}/Validate All The Team Players.png
#########################Save Created Playing 11 ############################
    Click Element    ${Back}
    Wait Until Element Is Visible    ${Save}     ${Timeout}
    Click Element    ${Save}
    Capture Page Screenshot     ${Screenshots_Path}/Save Created Playing 11.png














