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
	$r2 = StringLeft($s, 7)
	$r &= '[2]截取字符串中的"skyfree"' & $r2
	;截取字符串中的“Au3.cc”
	$r3 = StringRight($s, 6)
	$s &= '[3]截取字符串中的"Au3.cc"' & $r3 @CRLF
	;将“skyfree”替换为“Una”
	Local $r4
	$r4 = StringReplace($s, "Skyfree", "Una")
	$r &= '[4]将"Skyfree"替换为"Una"' & $r4
	;判断字符串中是否包含“Au3”的子串
	If StringInStr($s, "Au3") Then
		$r &= '[5]字符串中包含"Au3"子串' & @CRLF
	Else
		$r &= '[5]字符串中不包含"Au3"子串' & @CRLF
	EndIf
	;截取字符串中的“free”
Local $r6
Local $q=StringInStr($s,"f",0,1)
Local $w=StringInStr($s,"e",0,2)
$r6 = StringMid($s,$q,$w)
EndFunc   ;==>_Main




