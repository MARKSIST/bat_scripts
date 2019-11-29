@Echo Off
Set PassLenght=12
 
If Not "%1"=="" Set PassLenght=%1
SetLocal EnableDelayedExpansion EnableExtensions
Set TotalChars=65
Set CharSet=0123456789$#_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWQYZ
:Loop
Set /A Rnd=%TotalChars%*%Random%/32768
Set Pswd=!CharSet:~%Rnd%,1!%Pswd%
Set /A PassLenght-=1
If %PassLenght% GTR 0 GoTo Loop
Echo %Pswd%
Pause>Nul