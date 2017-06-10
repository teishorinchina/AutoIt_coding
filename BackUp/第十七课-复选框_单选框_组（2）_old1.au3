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
	Local $i, $a
	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE, $Button2
				Exit
			Case $Radio1
				_xuanze(1)
			Case $Radio2
				_xuanze(2)
			Case $Radio3
				_xuanze(0)
			Case $Button1
				$a = ""
				For $i = 1 To UBound($Checkbox, 1) - 1
					If GUICtrlRead($Checkbox[$i] = $GUI_CHECKED) Then
						$a &= $i & " "
					EndIf
				Next
				If $a <> "" Then
					$a = StringReplace(StringStripWS($a, 3), " ", ",")
					MsgBox(0, "", "Èí¼þ" & $a & "ÕýÔÚ°²×°")
				Else
					MsgBox(0, "", "Èí¼þÃ»ÓÐ±»Ñ¡Ôñ")
				EndIf

		EndSwitch
	WEnd
EndFunc   ;==>_main

Func _xuanze($a)
	Local $i
	Switch $a
		Case 1
			For $i = 1 To UBound($Checkbox, 1) - 1
				GUISetState($Checkbox[$i], $gui_checked)
			Next
		Case 2
			For $i = 1 To UBound($checkbox, 1) - 1
				If GUICtrlRead($Checkbox[$i] = $gui_checked) Then
					GUICtrlSetState($Checkbox[$i], $gui_unchecked)
				Else
					GUICtrlSetState($Checkbox[$i], $gui_checked)
				EndIf
			Next
		Case 0
			For $i = 1 To UBound($Checkbox, 1) - 1
				GUICtrlSetState($Checkbox[$i], $GUI_UNCHECKED)
			Next
	EndSwitch
EndFunc   ;==>_xuanze










