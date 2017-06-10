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

Dim $i=1
while $i<=5
	MsgBox(0,"输出：",$i)
	$i +=1
WEnd
