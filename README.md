# desafio-accenture

# Estrutura

/website
    - Código de automação para o primeiro desafio relacionado à automação do website http://www.sky.com.br
    - Validação da apresentação na Modal contendo as mesmas informações que as apresentadas na Box para o LIVE NOW
    - Arquivo ../SKY - QA Web Test.pdf

../mobile
    - Código de automação para o segundo desafio relacionado à automação mobile do aplicativo android SKY
    - Validação da página de Login disponibilizada no aplicativo Mobile
    - Testes escritos e executados para a versão Android do aplicativo
    - Arquivo ../Automacao_mobile_sky.pdf

Automação do website realizada utilizando-se a biblioteca Browser (Playwright)
Automação mobile realizada utilizando-se a biblioteca AppiumLibrary

# Instruções
- Instalar Python
- Instalar Robot Framework
	- pip install robotframework
- Instalar Appium Library
	- pip install --upgrade robotframework-appiumlibrary
- Instalar NodeJS
- Instalar Browser Library
	- pip install robotframework-browser
	- rfbrowser init
- Instalar Autorecorder Library
	- pip install robotframework-autorecorder
- Instalar Android Studio
- Instalar Appium Desktop
- Instalar VSCode
- Instalar Git

Como executar:
Web: robot -d ./logs.web tests/web/validate_tv_schedule.robot
Mobile: robot -d ./logs.mobile tests/mobile/validate_login_page.robot

Obs.: Para os testes mobiles, deve-se utilizar um emulador android ou um celular conectado via adb, deve-se especificar no arquivo resource/base.mobile.robot qual device será utilizado (por padrão está especificado para ser executado via emulador).