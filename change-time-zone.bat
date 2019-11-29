@ECHo OFF
@ECHO Click ENTER to see a list of time zones
@PAUSE
tzutil /l
SET /P time_zome="Choose your time zone (for example UKRAINE - KYIV : FLE Standard Time ): 
@ECHO Your choice: %time_zome%
tzutil /s "%time_zome%"
@ECHO Your curently time zone: %time_zome%
@pause