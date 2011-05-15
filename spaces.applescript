tell application "Image Events"
	launch
	set myDisplays to every display
	set displayCount to count of myDisplays
	set displayResult to false
	if displayCount is 1 then
		set displayResult to true
	end if
	quit
end tell

tell application "System Events"
	tell expose preferences
		tell spaces preferences
			set spaces enabled to displayResult
		end tell
	end tell
end tell