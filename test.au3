 < <<<<<< HEAD
#include <GUIConstants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#cs Dim $Form1,$Button1,$Button2,$cddrive
	Global $status=True
	$cddrive=DriveGetDrive("cdrom")
	$Form1 = GUICreate("????", 255, 83, 192, 114)
	$Button1 = GUICtrlCreateButton("????/??", 8, 24, 91, 25)
	$Button2 = GUICtrlCreateButton("??", 112, 24, 75, 25) GUISetState(@SW_SHOW)
	While 1
	$nMsg = GUIGetMsg() Switch $nMsg
	Case $GUI_EVENT_CLOSE Exit

	Case $Button1
	If $status=True Then
	CDTray($cddrive[1],"open")
	$status=False
	ElseIf $status=False Then
	CDTray($cddrive[1],"closed")
	$status=True

	Else

	MsgBox(0,"AU3 ????????","????,????????") EndIf


	Case $Button2
	Exit
	EndSwitch WEnd
#ce


;自己练习的代码
#cs
	Dim $test_a=1
	$test_b = 2
	Const $yuanzhoulv = 3.14
	MsgBox(0,"","常量圆周率值为："&$yuanzhoulv)
	MsgBox(0,"","变量test_a为："&$test_a)
	MsgBox(0,"","变量test_b为："&$test_b)
#ce

#cs
	if 1>0 Then
	MsgBox(0,"IF语句测试","大于0")
	EndIf
#ce

#cs
	Dim $input_number
	$input_number = InputBox("请输入数值","必须为数字")
	if $input_number>0 Then
	MsgBox(0,"","大于0")
	ElseIf $input_number ==0 Then
	MsgBox(0,"","等于0")
	Else
	MsgBox(0,"","小于0")
	EndIf
#ce

;select 语句和 Switch 语句
#cs
	Select
	Case[条件1]
	[语句段]
	Case[条件2]
	[语句段2]
	...
	case Else
	[语句段n+1]
	EndSelect

	Switch[表达式]
	Case[值1]
	[语句段1]
	Case[值2]
	[语句段2]
	...
	Case Else
	[语句段n+1]
	EndSwitch
#ce

#cs
	Dim $input_xuefen
	$input_xuefen = InputBox("请输入分数","0-100")
	Select
	Case $input_xuefen>= 85 And $input_xuefen<= 100
	MsgBox(0,"成绩等级","A")
	Case $input_xuefen>= 75 And $input_xuefen<= 84
	MsgBox(0,"成绩等级","B")
	Case $input_xuefen>= 60 And $input_xuefen<= 74
	MsgBox(0,"成绩等级","C")
	Case Else
	MsgBox(0,"成绩等级","D")
	EndSelect
#ce

#cs
	Dim $input_xuefen = InputBox("请输入分数","0-100")
	Switch $input_xuefen
	Case 85 to 100
	MsgBox(0,"成绩等级","A")
	Case 75 to 84
	MsgBox(0,"成绩等级","B")
	Case 60 to 74
	MsgBox(0,"成绩等级","C")
	Case Else
	MsgBox(0,"成绩等级","D")
	EndSwitch
#ce

#cs
	;While ... WEnd 循环
	While [条件1]
	[语句段]
	WEnd

	;Do ... Until 循环
	Do
	[语句段]
	Until[条件]
	;for 语句
	For [变量]=[初值]To[终值]{Step[步进值]}
	[语句段]
	Next
#ce

Dim $i = 1
While $i <= 5
	MsgBox(0, "输出：", $i)
	$i += 1
WEnd
 == == == =
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

Dim $i = 1
While $i <= 3
	If $i = 1 Then $a = 5
	If $i = 2 Then $a = -3
	If $i = 3 Then $a = 15

	$r = _Test($a)
	Switch @error
		Case 0 ;@error为0，则$a介于0-9
			MsgBox(0, "", $a & "介于0~9")
		Case 1 ;@error为1，则$a不在介于0~9之间
			Switch @extended
				Case 1 ;@extended为1，则$a<0
					MsgBox(0, "", $a & "小于0")
				Case 2 ;@extended为2，则$a>9
					MsgBox(0, "", $a & "大于9")
			EndSwitch
	EndSwitch
	$i += 1
WEnd

Func _Test($x)
	If $x >= 0 And $x <= 9 Then
		;当$x的值介于0~9时，返回1，并将@error设置为0，@extended设置为0
		Return SetError(0, 0, 1)
	Else
		If $x < 0 Then
			;当$x的值小于0时，返回0，并将@error设置为1，@extended设置为1
			Return SetError(1, 1, 0)
		Else
			;当$x的值大于9时，返回0，并将@error设置为1，@extended设置为2
			Return SetError(1, 2, 0)
		EndIf
	EndIf
EndFunc   ;==>_Test



 > >>>>>> origin / master
