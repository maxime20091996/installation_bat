@echo on

SET mypath=%~dp0
SET userprofil=%systemdrive%%homepath%
SET tomcatpath=C:\progra~1\apache-tomcat-9.0.27\bin

call mvn scm:checkout  -DconnectionUrl=scm:git:https://github.com/BenKapoor/CliniqueMaven -DcheckoutDirectory=testMonappli

cd %mypath%\testMonappli\CliniqueMaven\

call mvn clean package

SET src=C:\Users\cheva\Desktop\testMonappli\CliniqueMaven\CliniqueMavenPRESENTATION\target\CliniqueMavenPRESENTATION.war
SET dest=C:\progra~1\apache-tomcat-9.0.27\webapps\

copy %src% %dest%

call %tomcatpath%\startup.sh

start chrome http://localhost:8080/CliniqueMavenPRESENTATION/

pause
