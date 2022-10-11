*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}

Page Home E-hub
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
    Element Should Be Visible       id=com.sentrics.engage360:id/tvGroupName        Entertainment

#  NGG-TC-116
Home Help
    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
    Press Keycode   22
    Press Keycode   23

    Press Keycode   23

# NGG-TC-115
Video Player Help

# Video starts playing
    Press Keycode   20
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivHelpVideo
    Element Should Be Visible           id=com.sentrics.engage360:id/ivHelpVideo        	Welcome to Engage360
    Press Keycode   23

#Press "OK" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/cl_controls
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/player_progress
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/vEndDivider
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/clTime
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDuration
    Element Should Be Visible           id=com.sentrics.engage360:id/tvDuration         01:55
    sleep           1
    Press Keycode   23

# Press "OK" button again
#The Play icon is shown in the middle of the screen.
    Press Keycode   23

# Press "FF" button
# The video fast forwards in speed 1
    Press Keycode   22

# Press "OK" button
#The video continue playing
      Press Keycode   23

# Press "FF" button 2 times
# he video fast forwards in speed 2
    Press Keycode   22
    Press Keycode   22

# Press "OK" button
# The video continue playing
    Press Keycode   23

# Press "FF" button 3 times
# The video fast forwards in speed 3
    Press Keycode   22
    Press Keycode   22
    Press Keycode   22

# Press "OK" button
# The video continue playing
    Press Keycode   23


# Press "RW" button
# The video rewind fast in speed 1
    Press Keycode   21

# Press "OK" button
# The video continue playing
    Press Keycode   23

# Press "RW" button 2 times
# The video rewind fast in speed 2
    Press Keycode   21
    Press Keycode   21

# Press "OK" button
# The video continue playing
    Press Keycode   23

# Press "RW" button 3 times
 #The video rewind fast in speed 3
    Press Keycode   21
    Press Keycode   21
    Press Keycode   21

# Press "OK" button
# The video continue playing
    Press Keycode   23

# Press "FF" button
# The video fast forwards in speed 1
    Press Keycode   22

# Press "FF" button 2 times
# he video fast forwards in speed 2
    Press Keycode   22
    Press Keycode   22


# Press "FF" button 3 times
# The video fast forwards in speed 3
    Press Keycode   22
    Press Keycode   22
    Press Keycode   22

# Press "RW" button
# The video rewind fast in speed 1
    Press Keycode   21

# Press "RW" button 2 times
# The video rewind fast in speed 2
    Press Keycode   21


# Return
    Press Keycode   4

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvHelpTitle
    Element Should Be Visible           id=com.sentrics.engage360:id/tvHelpTitle        What is Engage360?

    Press Keycode   19

#  NGG-TC-114
Filters Validation Help

# Visible See All Window
    Wait Until Element Is Visible        id=com.sentrics.engage360:id/tvGroupName
    Element Should Be Visible            id=com.sentrics.engage360:id/tvGroupName    See All


# Select and enter to the Entertainment filter
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
    Element Should Be Visible       id=com.sentrics.engage360:id/tvGroupName        	Entertainment
    Press Keycode       22
    Press Keycode       23

# Select and enter to the Family filter
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
    Element Should Be Visible       id=com.sentrics.engage360:id/tvGroupName        	Family
    Press Keycode       22
    Press Keycode       23

# Select and enter to the Community filter
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
    Element Should Be Visible       id=com.sentrics.engage360:id/tvGroupName        	Community
    Press Keycode       22
    Press Keycode       23

# Select and enter to the My Health filter
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
    Element Should Be Visible       id=com.sentrics.engage360:id/tvGroupName        	My Health
    Press Keycode       22
    Press Keycode       23

# Select and enter to the Profile filter
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
    Element Should Be Visible       id=com.sentrics.engage360:id/tvGroupName        	Profile
    Press Keycode       22
    Press Keycode       23

# Back
    Press Keycode           4







