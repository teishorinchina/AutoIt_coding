#cs
	_Main()
	Exit

	Func _Main()
	Local $shuzu[]=["",99,87,54,94,254,64,485,67,98,64]
	Local $Min = $shuzu[1]
	Local $i,$j
	For $i= 2 To UBound($shuzu)-1
	If $shuzu[$i] < $Min Then $Min = $shuzu[$i]
	Next
	MsgBox(0,"求最小值","数组中最小值为："&$Min)
	EndFunc
#ce
#include <Array.au3>
_Main()
Exit

Func _Main()
	Local $shuzu1[] = ["", 99, 87, 54, 94, 254, 64, 485, 67, 98, 64]
	_ArrayDisplay($shuzu1, "排序前的无序数组")
	Local $i, $j
	For $j = 1 To UBound($shuzu1) - 2
		For $i = $j + 1 To UBound($shuzu1) - 1
			If $shuzu1[$i] < $shuzu1[$j] Then
				_jiaohuan($shuzu1[$i], $shuzu1[$j])
			EndIf
		Next
	Next
	_ArrayDisplay($shuzu1, "排序后的有序数组")
EndFunc   ;==>_Main

Func _jiaohuan(ByRef $n1, ByRef $n2)
	Local $temp
	$temp = $n1
	$n1 = $n2
	$n2 = $temp
EndFunc   ;


