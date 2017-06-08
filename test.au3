#cs ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿

	Au3版本:	3.3.14.2
	脚本作者:   丁啸林
	脚本功能:   脚本的练习
	更新日志:
	联系方式:

#ce ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿脚本开始＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿

#cs
;While循环
Dim $i = 1
While $i<=5
	MsgBox(0,"输出",$i)
	$i +=1
WEnd
#ce

;Do循环
;Dim $i = 1
#cs
Do
	MsgBox(0,"输出",$i)
	$i +=1
	Until $i>5
#ce
#cs
Dim $i,$j
For $i = 10 to 30 Step 10
	For $j=1 To 3
	MsgBox(0,"输出",$i+$j)
	Next
Next
#ce
#cs
Func[函数名]([参数1],[参数2],...[参数n]
	[语句或语句段]
	[Return(返回值)]
EndFunc
#ce

#cs
Dim $a,$b
$a=1
$b=2

Dim $c= _Plus($a,$b)
MsgBox(0,"",$a&"+"&$b&"="&$c)

Func _Plus($x,$y)
	Dim $sum = $x+$y
	Return $sum
EndFunc
#ce

#cs
_main()
Exit

Func _main()

EndFunc
#ce

#cs
Dim $a = 1
_PlusOne($a)
MsgBox(0,"",$a)

Func _PlusOne($x)
	$x=$x+1
	Return $x
EndFunc
#ce
#cs
Dim $a = 1,$b = 2
_Exchange($a,$b)
MsgBox(0,"","$a="&$a&" "&"$b="&$b)

Func _Exchange(ByRef $x,ByRef $y)
	Dim $t
	$t=$x
	$x=$y
	$y=$t
EndFunc

SetError 语法
SetError(错误值[,扩展值=0[,返回值]])
#ce

;SetError函数的应用
Dim $a

Dim $i=1
while $i<=3
	if $i = 1 then $a=5
	if $i = 2 then $a=-3
	If $i = 3 then $a=15
		
	$r = _Test($a)
	Switch @error
	Case 0 ;@error为0，则$a介于0-9
		MsgBox(0,"",$a & "介于0~9")
	Case 1 ;@error为1，则$a不在介于0~9之间
		Switch @extended
		Case 1;@extended为1，则$a<0
			MsgBox(0,"",$a&"小于0")
		Case 2;@extended为2，则$a>9
			MsgBox(0,"",$a&"大于9")
		EndSwitch
	EndSwitch
	$i += 1
WEnd

Func _Test($x)
	If $x >= 0 And $x <= 9 Then
		;当$x的值介于0~9时，返回1，并将@error设置为0，@extended设置为0
		Return SetError(0,0,1)
	Else
		If $x<0 Then		
			;当$x的值小于0时，返回0，并将@error设置为1，@extended设置为1
			Return SetError(1,1,0)
		Else
	        ;当$x的值大于9时，返回0，并将@error设置为1，@extended设置为2
			Return SetError(1,2,0)
		EndIf		
	EndIf
EndFunc ;==>_Test



