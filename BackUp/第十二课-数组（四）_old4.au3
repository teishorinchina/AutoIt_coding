#include<Array.au3>
#cs
	_Main()
	Exit

	Func _Main()
	Local $jvxing1[3][3] = [[1, 2, 3],[4, 5, 6],[7, 8, 9]]
	Local $jvxing2[3][3]
	_ArrayDisplay($jvxing1, "对换前")
	Local $i, $j
	For $i = 0 To 2
	For $j = 0 To 2
	$jvxing2[$i][$j] = $jvxing1[$j][$i]
	Next
	Next
	_ArrayDisplay($jvxing2, "对换后")
	EndFunc   ;==>_Main
#ce

_Main()
Exit

Func _Main()
	Local Const $n = 5
	Local $shuju[][$n] = [["序号", "姓名", "性别", "班级", "总分"] _
	[1, "张大爷", "男", "一班", 530]
	[2, "李大娘", "女", "二班", 426]
	[3, "王五书", "男", "五班", 625]
	[4, "刘大爷", "男", "四班", 452]
	[5, "苍大爷", "男", "一班", 562]
	_ArrayDisplay($shuju, "所有学生信息")
	Local $shuju2[1][$n]
	Local $i, $j
	Local $p = 1
	For $i = 1 To UBound($shuju) - 1
		If $shuju[$i][4] > 500 Then
			ReDim $shuju2[$p + 1][$n];重置$shuju2数组长度
			$shuju2[$p][0] = $p;设置shuju2数组的序号
			For $j = 1 To UBound($shuju2, 2) - 1
				$shuju2[$p][$j] = $shuju[$i][$j]
			Next
			$p += 1
			EndIf
;### Tidy Error -> "next" is closing previous "if" on line 36
		Next
		_ArrayDisplay($shuju2, "所有超过500的学生信息")
;### Tidy Error -> "endfunc" is closing previous "for" on line 35
	EndFunc   ;==>_Main

;### Tidy Error -> func is never closed in your script.
