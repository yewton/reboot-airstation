-- -*- mode: applescript; -*-
set user to (system attribute "AIRSTATION_USER")
set pass to (system attribute "AIRSTATION_PASS")

tell application "Safari"
	set URL of document 1 to "http://192.168.11.1/login.html"
end tell

delay 5

tell application "Safari"
	do JavaScript "document.getElementById('form_USERNAME').value = '" & user & "'" in document 1
	do JavaScript "document.getElementById('form_PASSWORD').value = '" & pass & "'" in document 1
	do JavaScript "handleSubmitOnClick()" in document 1
end tell

delay 5

tell application "Safari"
	set URL of document 1 to "http://192.168.11.1/save_init.html"
end tell

delay 5

tell application "Safari"
	do JavaScript "evalReboot()" in document 1
end tell
