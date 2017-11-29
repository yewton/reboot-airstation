#!/bin/sh

sed -e "s/\${user}/${AIRSTATION_USER}/" -e "s/\${pass}/${AIRSTATION_PASS}/" -e "s@\${HOME}@${HOME}@" launch_agent_template.plist > ~/Library/LaunchAgents/com.github.yewton.reboot_airstation.plist
cp reboot_airstation.applescript ~/Library/LaunchAgents/
launchctl remove com.github.yewton.reboot_airstation
launchctl load ~/Library/LaunchAgents/com.github.yewton.reboot_airstation.plist
