REM 恬宀��ID404
REM 全俊��https://www.zhihu.com/question/27065450/answer/35284642
REM 栖坿�砦�窄
REM 广恬幡拷恬宀侭嗤。斌匍廬墮萩選狼恬宀資誼娩幡��掲斌匍廬墮萩廣苧竃侃。
REM 屈肝俐個�� 表叫燉
@echo off
goto menu

:menu
cls
@echo 1. "云仇銭俊"徭強資函IP仇峽
@echo 2. 俐個"云仇銭俊"ip葎192.168.51.213 利購254 DNS葎腎
@echo 3. 臥心云字ip仇峽
@echo 4. 返強峺協云字坪利IP仇峽
@echo 5. 返強峺協云字坪利IP仇峽
@echo 6. 曜竃
REM ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
@echo.
@echo 潮範僉夲葎2[岷俊指概]
@echo.
@echo 萩僉夲

set selc=2
set /p selc=

@echo.
@echo 屎壓譜崔...
@echo.
REM ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
REM 暇汽議�贄κ村�柳廬
IF %selc%==1 goto DHCP
IF %selc%==2 goto ipstatic 
IF %selc%==3 goto ipconfig
IF %selc%==4 goto ipconfig_custom
IF %selc%==5 goto ipconfig_custom_2
IF %selc%==6 exit
IF %selc% NEQ 8 goto error
exit
REM ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！

:error
cls
goto menu
exit

REM ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！

:DHCP
@echo.
@echo 徭強資函ip仇峽
netsh int ip set add name="云仇銭俊" source=dhcp
@echo 徭強資函DNS捲暦匂
netsh int ip set dns name="云仇銭俊" source=dhcp
@echo 徭強資函ip仇峽譜崔頼穎
@echo.
exit

REM ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！

:ipstatic
@echo.
@echo 譜崔葎192.168.51.213
netsh int ip set add "云仇銭俊" static 192.168.51.213 255.255.255.0 192.168.51.254 1
@echo 床蓑ip譜崔頼穎
@echo.
exit

REM ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！

:ipconfig_custom
@echo.
@echo 萩補秘利粁
set /p wangduan=

@echo 萩補秘IP仇峽
set /p IP=

@echo 譜崔云字IP葎192.168.%wangduan%.%IP%
netsh int ip set add "云仇銭俊" static 192.168.%wangduan%.%IP% 255.255.255.0 192.168.%wangduan%.254 1

@echo 床蓑ip譜崔頼穎
@echo.
exit

REM ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！

:ipconfig_custom_2
@echo.
@echo 萩補秘翌利利粁
set /p wangduan2=

@echo 萩補秘翌利IP仇峽
set /p IP2=

@echo 譜崔云字翌利IP葎172.16.%wangduan2%.%IP2%
netsh int ip set add "云仇銭俊" static 172.16.%wangduan2%.%IP2% 255.255.255.0 172.16.%wangduan2%.254 1
@echo 屎壓譜崔DNS捲暦匂��202.102.154.3
netsh int ip set dns name="云仇銭俊" source=static 202.102.154.3
@echo 翌利ip譜崔頼穎
@echo.
exit

REM ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！



:ipconfig
cls
ipconfig /all
@pause
goto menu
exit