#include <GUIConstantsEx.au3>
#include <staticconstants.au3>
#include <windowsconstants.au3>
$Form1 = GUICreate("图片查看器", 215, 255, -1, -1)
$Pic1 = GUICtrlCreatePic("", 16, 16, 180, 180)
$Icon1 = GUICtrlCreateIcon(@ScriptDir & "\left.ico", -1, 40, 208, 32, 32)
$Icon2 = GUICtrlCreateIcon(@ScriptDir & "\right.ico", -1, 136, 208, 32, 32)

_main()
Exit

Func _main()
	Local $Pic = 1
	Local $pic_lujing = _pic_lu()
	GUICtrlSetImage($Pic, $pic_lujing[$Pic])
	GUISetState()

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				Exit
			Case $Icon1
				If $Pic = 1 Then
					MsgBox(0, "", "图片为1")
				Else
					$Pic -= 1
					GUICtrlSetImage($Pic, "")
					GUICtrlSetImage($Pic, $pic_lujing($Pic))
				EndIf
			Case $Icon2
				If $Pic = UBound($pic_lujing, 1) - 1 Then
					MsgBox(0, "", "图片已经是最后一张了")
				Else
					$Pic += 1
					GUICtrlSetImage($Pic, "")
					GUICtrlSetImage($Pic, $pic_lujing($pic))
				EndIf
				
		EndSwitch
	WEnd



EndFunc   ;==>_main



Func _pic_lu()
	Local $a[] = ["", _
			"1.jpg", _
			"2.jpg", _
			"3.jpg", _
			"4.jpg", _
			"5.jpg"]
	
	Local $i
	For $i = 1 To UBound($a, 1) - 1
		$a[$i] = @ScriptDir & "\pic\" & $a[$i]
	Next
	
	Return $a
	
EndFunc   ;==>_pic_lu


