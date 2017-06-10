REM ×÷Õß£ºID404
REM Á´½Ó£ºhttps://www.zhihu.com/question/27065450/answer/35284642
REM À´Ô´£ºÖªºõ
REM Öø×÷È¨¹é×÷ÕßËùÓÐ¡£ÉÌÒµ×ªÔØÇëÁªÏµ×÷Õß»ñµÃÊÚÈ¨£¬·ÇÉÌÒµ×ªÔØÇë×¢Ã÷³ö´¦¡£
REM ¶þ´ÎÐÞ¸Ä£º É½¶«ß÷
@echo off
goto menu

:menu
cls
@echo 1. "±¾µØÁ¬½Ó"×Ô¶¯»ñÈ¡IPµØÖ·
@echo 2. ÐÞ¸Ä"±¾µØÁ¬½Ó"ipÎª192.168.51.213 Íø¹Ø254 DNSÎª¿Õ
@echo 3. ²é¿´±¾»úipµØÖ·
@echo 4. ÊÖ¶¯Ö¸¶¨±¾»úÄÚÍøIPµØÖ·
@echo 5. ÊÖ¶¯Ö¸¶¨±¾»úÄÚÍøIPµØÖ·
@echo 6. ÍË³ö
REM ¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª
@echo.
@echo Ä¬ÈÏÑ¡ÔñÎª2[Ö±½Ó»Ø³µ]
@echo.
@echo ÇëÑ¡Ôñ

set selc=2
set /p selc=

@echo.
@echo ÕýÔÚÉèÖÃ...
@echo.
REM ¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª
REM ²Ëµ¥µÄÏìÓ¦ÊÂ¼þÌø×ª
IF %selc%==1 goto DHCP
IF %selc%==2 goto ipstatic 
IF %selc%==3 goto ipconfig
IF %selc%==4 goto ipconfig_custom
IF %selc%==5 goto ipconfig_custom_2
IF %selc%==6 exit
IF %selc% NEQ 8 goto error
exit
REM ¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

:error
cls
goto menu
exit

REM ¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

:DHCP
@echo.
@echo ×Ô¶¯»ñÈ¡ipµØÖ·
netsh int ip set add name="±¾µØÁ¬½Ó" source=dhcp
@echo ×Ô¶¯»ñÈ¡DNS·þÎñÆ÷
netsh int ip set dns name="±¾µØÁ¬½Ó" source=dhcp
@echo ×Ô¶¯»ñÈ¡ipµØÖ·ÉèÖÃÍê±Ï
@echo.
exit

REM ¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

:ipstatic
@echo.
@echo ÉèÖÃÎª192.168.51.213
netsh int ip set add "±¾µØÁ¬½Ó" static 192.168.51.213 255.255.255.0 192.168.51.254 1
@echo ¾²Ì¬ipÉèÖÃÍê±Ï
@echo.
exit

REM ¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

:ipconfig_custom
@echo.
@echo ÇëÊäÈëÍø¶Î
set /p wangduan=

@echo ÇëÊäÈëIPµØÖ·
set /p IP=

@echo ÉèÖÃ±¾»úIPÎª192.168.%wangduan%.%IP%
netsh int ip set add "±¾µØÁ¬½Ó" static 192.168.%wangduan%.%IP% 255.255.255.0 192.168.%wangduan%.254 1

@echo ¾²Ì¬ipÉèÖÃÍê±Ï
@echo.
exit

REM ¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

:ipconfig_custom_2
@echo.
@echo ÇëÊäÈëÍâÍøÍø¶Î
set /p wangduan2=

@echo ÇëÊäÈëÍâÍøIPµØÖ·
set /p IP2=

@echo ÉèÖÃ±¾»úÍâÍøIPÎª172.16.%wangduan2%.%IP2%
netsh int ip set add "±¾µØÁ¬½Ó" static 172.16.%wangduan2%.%IP2% 255.255.255.0 172.16.%wangduan2%.254 1
@echo ÕýÔÚÉèÖÃDNS·þÎñÆ÷£º202.102.154.3
netsh int ip set dns name="±¾µØÁ¬½Ó" source=static 202.102.154.3
@echo ÍâÍøipÉèÖÃÍê±Ï
@echo.
exit

REM ¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª



:ipconfig
cls
ipconfig /all
@pause
goto menu
exit