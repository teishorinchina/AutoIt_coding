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
	Local $pic_lujing = _$pic_lu()
	GUICtrlSetImage($Pic1, $pic_lujing[$Pic])
	GUISetState()

EndFunc   ;==>_main

Func _pic_lu()
	Local $a[] = ["",
	"1.jpg", _
			"2.jpg", _
			"3.jpg", _
			"4.jpg", _
			"5.jpg", _

	Local $i
	For $i = 1 To UBound($a, 1) - 1
		$a[$i] = @ScriptDir & "\pic\" & $a[$i]
	Next
EndFunc   ;==>_pic_lu


