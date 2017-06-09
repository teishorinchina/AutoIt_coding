#include<Array.au3>
_Main()
Exit

Func _Main()
	Local $jvxing1[3][3] = [[1, 2, 3],[4, 5, 6],[7, 8, 9]]
	Local $jvxing2[3][3]
	_ArrayDisplay($jvxing1,"对换前")
	Local $i ,$j
	For $i=0 to 2
		For $j = 0 to 2
			$jvxing2[$i][$j]=$jvxing1[$j][$i]
		Next
	Next
	_ArrayDisplay($jvxing1,"对换后")
EndFunc


;### Tidy Error -> func is never closed in your script.
