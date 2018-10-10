*** Settings ***

Resource        tests/HEDA.robot
Suite Setup     Open Test Browser
Suite Teardown  Delete Records and Close Browser

*** Test Cases ***

Go To Heda Home
    Go To Heda Home
    Select Frame			//iframe[contains(@id, "vfFrameId")]
    Click Link				//a[contains(text(),'Course Connections')]
    Wait Until Element Is visible	//a[contains(text(),'Course Connections')]

Validate Edit Mode For Course Connections, Settings
    
    Go To Heda Home
    Select Frame                    //iframe[contains(@id, "vfFrameId")]

    #Go into edit mode
    Click Element                   //div[@class='slds-button-group']//span[contains(text(), 'Edit')]
    Wait Until Element Is visible   //div[@data-aura-rendered-by='28:0']

    #Verify that the alert is visible
    Element Should Be visible       //label[@class='slds-checkbox']//input[@type='checkbox']
    Select Checkbox                 //label[@class='slds-checkbox']//input[@type='checkbox']

*** Keywords ***