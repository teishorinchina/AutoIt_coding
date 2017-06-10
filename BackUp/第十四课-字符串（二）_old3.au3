#cs
_Main()
Exit

Func _Main()
	Local $s = ""
	Local $i
	For $i = 65 To 90
		$s &= Chr($i)
	Next
	MsgBox(0, "输出A-Z", $s)
EndFunc   ;==>_Main
#ce
