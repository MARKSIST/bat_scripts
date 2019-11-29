@ECHO OFF
SET /P comp_name= "Enter new name of computer: 
echo comp_name - %comp_name%
wmic computersystem where name="%computername%" rename "%comp_name%"
ECHO New name of computer is: %comp_name%
@PAUSE