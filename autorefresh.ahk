InputBox, refreshFrequency, Refresh rate, How long between each refresh?
InputBox, refreshCount, Refresh for, How many refreshes?

MsgBox, Refresh every %refreshFrequency% seconds 
MsgBox, Refresh %refreshCount% times 

^+r::
    while refreshCount >= 1
    {
	refreshCount -= 1
	Send ^r
        Sleep, %refreshFrequency%
    } 
return 


^+c::
	refreshCount = 0
	refreshFrequency = 0
	MsgBox, %refreshCount% %refreshFrequency% 
	Exit
return 

