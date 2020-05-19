*** Keywords ***


User Clicks Button Rotation Right
    Click Button	//*[@id="script_rotation_right"]
    Sleep                                   1
User Clicks Button Rotation Left
    Click Button	//*[@id="script_rotation_left"]
    Sleep                                   1
User Enters Value In Field
    [Arguments]	${input}
    Click Element	//*[@id="manual_rotation_buttons"]/div/input
	Input Text      //*[@id="manual_rotation_buttons"]/div/input  ${input}
    Click Button    //*[@id="script_rotation_position"]
    Sleep                                   1
User presses up arrow in textfeild
    Click Element	//*[@id="manual_rotation_buttons"]/div/input
    Press Keys  //*[@id="manual_rotation_buttons"]/div/input     ARROW_UP    ARROW_UP    ARROW_UP
    Click Button	//*[@id="script_rotation_position"]
    Sleep                                   1
User presses down arrow in textfeild
    Click Element	//*[@id="manual_rotation_buttons"]/div/input
    Press Keys  //*[@id="manual_rotation_buttons"]/div/input     ARROW_DOWN    ARROW_DOWN    ARROW_DOWN
    Click Button	//*[@id="script_rotation_position"]
    Sleep                                   1
