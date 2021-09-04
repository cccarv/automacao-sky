***Settings***
Library                 AppiumLibrary

***Keywords***
Mobile Local
    Set Appium Timeout  60
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 app=${EXECDIR}/tests/mobile/app/sky.apk
    ...                 udid=emulator-5554
    #...                 udid=ZF5225M9PJ