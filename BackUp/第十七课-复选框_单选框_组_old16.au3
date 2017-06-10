#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=K:\Program Files\koda_1.7.3.0\Forms\第十七课-复选框_单选框_组.kxf
$Form2 = GUICreate("软件安装管理器", 445, 339, 851, 143)
Global $Checkbox[7]
$Group1 = GUICtrlCreateGroup("", 24, 32, 401, 137)
$Checkbox[1] = GUICtrlCreateCheckbox("[1]安装QQ", 72, 56, 97, 17)
$Checkbox[2] = GUICtrlCreateCheckbox("[2]安装迅雷", 72, 88, 97, 17)
$Checkbox[3] = GUICtrlCreateCheckbox("[3]安装WPS", 72, 120, 97, 17)
$Checkbox[4] = GUICtrlCreateCheckbox("[4]安装好压", 272, 56, 97, 17)
$Checkbox[5] = GUICtrlCreateCheckbox("[5]安装QQ音乐", 272, 88, 97, 17)
$Checkbox[6] = GUICtrlCreateCheckbox("[6]安装360安全软件", 272, 120, 145, 17)
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
				For i = 1 To UBound($Checkbox, 1) - 1
					If GUICtrlRead($Checkbox[$i] = $gui_checked Then
						$a &= $i & " "
					EndIf
				Next
				If $a <> "" Then
					$a = StringReplace(StringStripWS($a, 3), " ", ",")
					MsgBox(0, "", "软件" & $a & "正在安装")
				Else
					MsgBox(0, "", "软件没有被选择")
				EndIf



;### Tidy Error -> "endswitch" is closing previous "case" on line 34
			EndSwitch
;### Tidy Error -> "wend" is closing previous "switch" on line 33
		WEnd
;### Tidy Error -> "endfunc" is closing previous "while" on line 31
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
					If GUICtrlRead($Checkbox[$i] = $gui_checked Then
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







;### Tidy Error -> func is never closed in your script.
