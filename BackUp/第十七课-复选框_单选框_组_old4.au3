#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=K:\Program Files\koda_1.7.3.0\Forms\第十七课-复选框_单选框_组.kxf
$Form2 = GUICreate("软件安装管理器", 445, 339, 851, 143)
Global $Checkbox[7]
$Group1 = GUICtrlCreateGroup("", 24, 32, 401, 137)
$Checkbox1 = GUICtrlCreateCheckbox("[1]安装QQ", 72, 56, 97, 17)
$Checkbox2 = GUICtrlCreateCheckbox("[2]安装迅雷", 72, 88, 97, 17)
$Checkbox3 = GUICtrlCreateCheckbox("[3]安装WPS", 72, 120, 97, 17)
$Checkbox4 = GUICtrlCreateCheckbox("[4]安装好压", 272, 56, 97, 17)
$Checkbox5 = GUICtrlCreateCheckbox("[5]安装QQ音乐", 272, 88, 97, 17)
$Checkbox6 = GUICtrlCreateCheckbox("[6]安装360安全软件", 272, 120, 145, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("", 24, 184, 401, 49)
$Radio1 = GUICtrlCreateRadio("全选", 40, 208, 113, 17)
$Radio2 = GUICtrlCreateRadio("反选", 160, 208, 113, 17)
$Radio3 = GUICtrlCreateRadio("取消", 304, 208, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button1 = GUICtrlCreateButton("安装软件", 120, 272, 75, 26)
$Button2 = GUICtrlCreateButton("退出程序", 296, 272, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


_main()
Exit
Func _main()
	GUISetState()
	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE, $Button2
				Exit
			Case $Radio1
				_xuanze(1)
			case $Radio2
				_xuanze(2)
			Case $Radio3
				_xuanze(0)


		EndSwitch
	WEnd
EndFunc   ;==>_main

Func _xuanze($a)
EndFunc
