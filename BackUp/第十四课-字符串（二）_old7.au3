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

_Main()
Exit
Func _Main()
	Local $s = "Skyfree and Au3.cc"
	Local $r = ""
	$r &= "已知字符串:" & $s & @CRLF & @CRLF
	;获取字符串长度
	Local $len
	$len = StringLen($s)
	$r &= "[1]字符串长度" & $len @CRLF
	;截取字符串中的"skyfree"
	$r2 =StringLeft($s,7)
	$r &='[2]截取字符串中的"skyfree"'&$r2
	;截取字符串中的“Au3.cc”
	$r3=StringRight($s,6)
