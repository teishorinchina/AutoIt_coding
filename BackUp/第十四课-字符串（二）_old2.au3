_Main()
Exit

Func _Main()
	Local $s = ""
	Local $i =
	For $i = 65 To 90
		$s &= Chr($i)
	Next
	MsgBox(0,"",$s)
EndFunc   ;==>_Main
