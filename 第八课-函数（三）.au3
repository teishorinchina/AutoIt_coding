#cs
Dim $a = 3,$b =1,$c=2
_NumSort($a,$b,$c)
MsgBox(0,"三数值排序","从小到大"&$a&","&$b&","&$c)

Func _NumSort(ByRef $n1,ByRef $n2,ByRef $n3)
	;若$n1>$n2,则交换$n1和$n2的值
	If $n1>$n2 Then _Exchange($n1,$n2)
	;若$n1>$n3,则交换$n1和$n3的值
	If $n1>$n3 Then _Exchange($n1,$n3)
    ;若$n2>$n3,则交换$n2和$n3的值
	If $n2>$n3 Then _Exchange($n2,$n3)		
	EndFunc
	
	Func _Exchange(ByRef $x,ByRef $y)
		;交换两变量数值
		Dim $temp = $x
		$x = $y
		$y = $temp
	EndFunc
#ce
#cs
Dim $a = 20
MsgBox(0,"","第"& $a &"个人的年龄："& _Age($a))

;函数_Age()用于求出年龄，$n代表第几个人

Func _Age($n)
	If $n = 1 Then
		;当$n=1时，（第一个人），返回年龄10
		Return 10
		;否则返回上个人的年龄+2
	Else
		Return _Age($n-1)+2
	EndIf
EndFunc
#ce
#cs
Global $sum = 0
_Plus()
MsgBox(0,"",$sum)

Func _Plus()
Local $sum
Local $x=1,$y=2
$sum=$x+$y
EndFunc
#ce
Global $g_Var1,$g_Var2
;主函数开始
_Main()
;以主函数结束
Exit

Func _Main()
	Local $a,$b
	;调用各子函数
	_function1()
	_function2()
	_function3()
EndFunc

func _function1()
	Local $s1,$s2
	;子函数1
EndFunc

func _function2($x,$y)
	;子函数2
EndFunc

func _function3()
	；子函数3
EndFunc
