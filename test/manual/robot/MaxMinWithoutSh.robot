*** Settings ***
Documentation     Maximizing and Minimizing the Drone Positions
Library             SeleniumLibrary
Library              Process
Library             ./library/UrlLibrary.py
Library              OperatingSystem
Resource            ./../../keywords/keywords.robot
Resource            ./../../keywords/SSRS2_keywords.robot
Resource            ./../../keywords/SabaKeyWords.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${BROWSER} =        headlessfirefox


*** Test Cases ***
Max pitch                #test case for the Max position
    [Documentation]      Clicking the Positions Max pitch
	[Tags]				 max_pitch
	Display Page
	User Click Button Max pitch
	Verify Function is called            app_max_pitch



Min pitch                   #test case for the Min position
    [Documentation]       	Clicking the Positions Min pitch
	[Tags]					min_pitch
	Display Page
	User Click Button Min pitch
	Verify Function is called            app_min_pitch
    

Max lift                   			  	   #test case for the  Max lift position
    [Documentation]     	Clicking the Positions Max lift
	[Tags]					max_lift
	Display Page
	User Click Button Max lift
	Verify Function is called            app_max_lift
	
Min lift                          	    #test case for the Min lift position
    [Documentation]         Clicking the Positions Min lift
	[Tags]					min_lift
	Display Page
	User Click Button Min lift
	Verify Function is called            app_min_lift

