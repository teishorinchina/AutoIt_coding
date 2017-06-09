#include <Array.au3>
;一维数组
;Global/Local <数组名>[元素个数]
#cs
Local $Array[5] = [0,1,2,3,4]
$i=0
For $i = 0 to 4 
MsgBox(0,"",$array[$i])
Next
#ce
;Global/Local <数组名>[第一维元素个数][第二维元素个数]
#cs
Local $Array[3][2] = [['a','b'],['c','d'],['e','f']]
Local $i,$j
For $i = 0 To 2
	For $j = 0 to 1 
	MsgBox(0,"",$Array[$i][$j])
	Next
Next
#ce
;动态数组
#cs
ReDim<数组名>[索引1][索引2]...[索引N]
;定义一个一维数组，大小为3
Local $Array[3]
;将数组大小调整至5
ReDim $Array[5]
#ce
#cs
_main()
Exit

Func _main()
	Local $Array[6]=["",1,2,3,4,5]
	_Test($Array)
EndFunc

Func _Test($TestArray)
	MsgBox(0,"",$TestArray[3])
EndFunc
#ce
#cs
Local $qqq[5][4]=[[1,2,3,4],[5,'',6,9],[7,8,5,4]]
;取列数
Local $return1 = UBound ($qqq,2)
MsgBox(0,"","列数为"& $return1)
;取行数
Local $return2 = UBound ($qqq,1)
MsgBox(0,"","行数为"& $return2)
;取下标数
Local $return3 = UBound ($qqq,0)
MsgBox(0,"","维数为"& $return3)
#ce
Local $qqq[5][4]=[[1,2,3,4],[5,'',6,9],[7,8,5,4]]
_ArrayDisplay($qqq)

