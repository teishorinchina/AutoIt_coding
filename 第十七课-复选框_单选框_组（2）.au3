#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
Global $hCheckbox[7]
$hGUI = GUICreate("Window", 500, 400, -1, -1)
$hButton = GUICtrlCreateButton("开始安装", 138, 336, 97, 38)
$hButton2 = GUICtrlCreateButton("退 出", 248, 336, 97, 38)
$hGroup = GUICtrlCreateGroup("", 61, 40, 380, 125)
$hGroup2 = GUICtrlCreateGroup("", 61, 195, 380, 60)
$hCheckbox[1] = GUICtrlCreateCheckbox("[1]安装QQ", 95, 64, 102, 16)
$hCheckbox[2] = GUICtrlCreateCheckbox("[2]安装迅雷", 95, 88, 102, 16)
$hCheckbox[3] = GUICtrlCreateCheckbox("[3]安装WPS", 95, 112, 102, 16)
$hCheckbox[4] = GUICtrlCreateCheckbox("[4]安装好压", 283, 64, 102, 16)
$hCheckbox[5] = GUICtrlCreateCheckbox("[5]安装QQ音乐", 283, 88, 102, 16)
$hCheckbox[6] = GUICtrlCreateCheckbox("[6]安装360安全卫士", 283, 112, 150, 16)
$hRadio = GUICtrlCreateRadio("全选", 70, 218, 85, 19)
$hRadio2 = GUICtrlCreateRadio("反选", 210, 218, 85, 19)
$hRadio3 = GUICtrlCreateRadio("取消", 350, 218, 85, 19)
GUISetState()

#cs
	While 1
	$hMsg = GUIGetMsg()
	Switch $hMsg
	Case $GUI_EVENT_CLOSE
	Exit
	EndSwitch
	WEnd
#ce
_main()
Exit
Func _main()
	GUISetState()
	Local $i, $a ;设置变量 i，a
	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE, $hButton2 ;检测到点击关闭按钮或者退出按钮时，退出
				Exit
			Case $hRadio ;点击“全选”时，执行_xuanze(1)
				_xuanze(1)
			Case $hRadio2 ;点击“反选”时，执行_xuanze(2)
				_xuanze(2)
			Case $hRadio3 ;点击“取消”时，执行_xuanze(0)
				_xuanze(0)
			Case $hButton ;设置点击“开始安装”按钮的响应事件
				$a = ""
				For $i = 1 To UBound($hCheckbox, 1) - 1
					If GUICtrlRead($hCheckbox[$i]) = $GUI_CHECKED Then
						$a &= $i & " "
					EndIf
				Next
				If $a <> "" Then
					$a = StringReplace(StringStripWS($a, 3), " ", ",")
					MsgBox(0, "", "安装" & $a & "这些软件")
				Else
					MsgBox(0, "", "没有软件被选择")
				EndIf

		EndSwitch
	WEnd
EndFunc   ;==>_main

Func _xuanze($a)
	Local $i ;设置本地变量i
	Switch $a ;判断a的值
		Case 1 ;全选
			For $i = 1 To UBound($hCheckbox, 1) - 1 ;设置i的初始值为1，终止值为hCheckbox数组的列数减去1
				GUICtrlSetState($hCheckbox[$i], $GUI_CHECKED)
			Next
		Case 2 ;反选
			For $i = 1 To UBound($hCheckbox, 1) - 1
				If GUICtrlRead($hCheckbox[$i]) = $GUI_CHECKED Then ;使用 GUICtrlRead取得 hCheckbox[$i]的状态值，如果等于 $GUI_CHECKED，则置为$GUI_UNCHECKED
					GUICtrlSetState($hCheckbox[$i], $GUI_UNCHECKED)
				Else
					GUICtrlSetState($hCheckbox[$i], $GUI_CHECKED) ;否则置为$GUI_CHECKED
				EndIf
			Next
		Case 0 ;取消
			For $i = 1 To UBound($hCheckbox, 1) - 1
				GUICtrlSetState($hCheckbox[$i], $GUI_UNCHECKED)
			Next
	EndSwitch
EndFunc   ;==>_xuanze










