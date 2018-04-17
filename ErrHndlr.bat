@Echo Off
SetLocal EnableExtensions EnableDelayedExpansion
If "%1"=="" Goto NO_PARAM
If "%1"=="-E" If "%2"=="00_10_00" Goto NO_EXIST_SHADOWRAIN
If "%1"=="-E" If "%2"=="00_10_10" Goto NO_EXIST_MODULES
If "%1"=="-E" If "%2"=="00_10_20" Goto NO_EXIST_COMMANDENGINE
If "%1"=="-E" If "%2"=="00_10_30" Goto NO_EXIST_UACSYS
If "%1"=="-E" If "%2"=="00_10_40" Goto NO_EXIST_ENCDEC
If "%1"=="-E" If "%2"=="00_40_10" Goto NO_EXIST_001
If "%1"=="-E" If "%2"=="00_40_20" Goto NO_EXIST_002
If "%1"=="-E" If "%2"=="00_40_30" Goto NO_EXIST_003
If "%1"=="-E" If "%2"=="00_50_00" Goto NO_VALUE
If "%1"=="-E" If "%2"=="00_50_10" Goto INVALID_VALUE
If "%1"=="-E" If "%2"=="01_04_99" Goto EASTER
If "%1"=="-E" If "%2"=="02_01_00" Goto NO_USER
Exit

:NO_PARAM
Color 0C
Echo -- Unable to run file - No parameter is defined, Returning to boot menu.
Exit

:INVALID_VALUE
If "!Version!"=="" Set "Version=UNDEFINED"
If "!Version!"=="0.0.1" cmd /k Startup.bat -s
If "!Version!"=="0.0.2" cmd /k Startup.bat -s
If "!Version!"=="0.0.3" cmd /k Startup.bat -s
Echo "!Version!" - This is not a valid version of ShadowRain.
Echo.
Echo Press any key to return to the ShadowRain boot menu.
Pause>Nul
cmd /k Startup.bat -s
Exit

:EASTER
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : Dev Message - SECRET EASTER EGG
Echo 			- ShadowRain is good ~ Salem
Echo 			- Pizza is better ~ Taake
Echo.
Echo Found this error? Tell us about it on discord @ https://discord.gg/t4f3MXA !
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.
Echo Press any key to boot into ShadowRain
Pause>Nul
cmd /k Startup.bat -s
Exit

:NO_VALUE
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : Undefined Value - Startup.bat
Echo            - [%cd%\][Startup.bat]:@10:14
Echo            - NO_DEFINED_RESULT:@10
Echo           - :@10:VERSION_UNDEFINED
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.        
Echo Press any key to terminate booting into ShadowRain
Pause>Nul
Exit

:NO_EXIST_SHADOWRAIN
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : File Missing - ShadowRain.bat
Echo            - Please locate the missing file and place it in this directory:
Echo                  - %cd%\
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Press any key to terminate booting into ShadowRain
Pause>Nul
Exit

:NO_EXIST_COMMANDENGINE
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : File Missing - CommandEngine.bat
Echo            - Please locate the missing file and place it in this directory:
Echo                  - %cd%\
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.
Echo Press any key to terminate booting into ShadowRain
Pause>Nul
Exit

:NO_EXIST_MODULES
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : Directory Missing - modules
Echo            - Please add the missing directory and place it in this directory:
Echo                  - %cd%\
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.
Echo Press any key to terminate booting into ShadowRain
Pause>Nul
Exit

:NO_EXIST_ENCDEC
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : File Missing - Encdec.bat
Echo            - Please locate the missing file and place it in this directory:
Echo                  - %cd%\
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.
Echo Press any key to terminate booting into ShadowRain
Pause>Nul
Exit

:NO_EXIST_UACSYS
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : File Missing - UacSys.bat
Echo            - Please locate the missing file and place it in this directory:
Echo                  - %cd%\
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.
Echo Press any key to terminate booting into ShadowRain
Pause>Nul
Exit

:NO_USER
Cls
Color 0C
Echo.
Echo -- '!User!' is not a user on the system. --
Echo.
Pause>Nul
Exit

:NO_EXIST_001
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : File Missing - modules\0.0.1.bat
Echo            - Please locate the missing file and place it in this directory:
Echo                  - %cd%\modules
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.
Echo Press any key to terminate booting into ShadowRain
Pause>Nul
Exit

:NO_EXIST_002
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : File Missing - modules\0.0.2.bat
Echo            - Please locate the missing file and place it in this directory:
Echo                  - %cd%\modules
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.
Echo Press any key to terminate booting into ShadowRain
Pause>Nul
Exit

:NO_EXIST_003
Color 0C
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo Error : File Missing - modules\0.0.3.bat
Echo            - Please locate the missing file and place it in this directory:
Echo                  - %cd%\modules
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.
Echo Press any key to terminate booting into ShadowRain
Pause>Nul
Exit