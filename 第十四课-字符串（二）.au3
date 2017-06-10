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
#cs
	_Main()
	Exit
	Func _Main()
	Local $s = "Skyfree and Au3.cc"
	Local $r = ""
	$r &= "已知字符串:" & $s & @CRLF & @CRLF
	;获取字符串长度
	Local $len
	$len = StringLen($s)
	$r &= "[1]字符串长度" & $len & @CRLF
	;截取字符串中的"skyfree"
	$r2 = StringLeft($s, 7)
	$r &= '[2]截取字符串中的"skyfree"' & $r2 & @CRLF
	;截取字符串中的“Au3.cc”
	$r3 = StringRight($s, 6)
	$r &= '[3]截取字符串中的"Au3.cc"' & $r3 & @CRLF
	;将“skyfree”替换为“Una”
	Local $r4
	$r4 = StringReplace($s, "Skyfree", "Una")
	$r &= '[4]将"Skyfree"替换为"Una"' & $r4 & @CRLF
	;判断字符串中是否包含“Au3”的子串
	If StringInStr($s, "Au3") Then
	$r &= '[5]字符串中包含"Au3"子串' & @CRLF
	Else
	$r &= '[5]字符串中不包含"Au3"子串' & @CRLF
	EndIf
	;截取字符串中的“free”
	Local $r6
	Local $q = StringInStr($s, "f", 0, 1)
	Local $w = StringInStr($s, "e", 0, 2)
	$r6 = StringMid($s, $q, $w - $q + 1)
	$r &= '[6]截取字符串中的"free"' & $r6 & @CRLF
	MsgBox(0, "字符串练习", $r)
	EndFunc   ;==>_Main
#ce

_Main()
Exit

Func _Main()
	Local $s1 = "una", $s2 = "GMan", $s3 = "skye"
	If StringCompare($s1, $s2) > 0 Then _jiaohuan($s1, $s2)
	If StringCompare($s1, $s3) > 0 Then _jiaohuan($s1, $s3)
	If StringCompare($s2, $s3) > 0 Then _jiaohuan($s2, $s3)
	MsgBox(0, "三字符串排序", $s1 & " " & $s2 & " " & $s3)
EndFunc   ;==>_Main

Func _jiaohuan(ByRef $x1, ByRef $x2)
	$temp = $x1
	$x1 = $x2
	$x2 = $temp
EndFunc   ;==>_jiaohuan
