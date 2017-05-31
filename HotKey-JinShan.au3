#cs ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿

	Au3版本:	3.3.14.2
	脚本作者:   丁啸林
	脚本功能:   为金山词霸2010增加快捷键
	更新日志:
	联系方式:

#ce ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿脚本开始＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿


If Not ProcessExists("Newword.exe") Then Run("C:\Program Files (x86)\Kingsoft\PowerWordDict\Newword.exe")

HotKeySet("!a", "AddButtonClick")
HotKeySet("!e", "EditButtonClick")
HotKeySet("!d", "DeleteButtonClick")
HotKeySet("!s", "SaveButtonClick")

While 1
	If Not ProcessExists("Newword.exe") Then ExitLoop
	Sleep(100);每100毫秒休眠一次
WEnd

Func AddButtonClick();定义点击“添加”按钮的快捷键函数
	ControlClick("生词本", "", "Button12")
EndFunc   ;==>AddButtonClick


Func EditButtonClick();定义点击“编辑”按钮的快捷键函数
	ControlClick("生词本", "", "Button13")
EndFunc   ;==>EditButtonClick

Func DeleteButtonClick();定义点击“删除”按钮的快捷键函数
	ControlClick("生词本", "", "Button14")
EndFunc   ;==>DeleteButtonClick

Func SaveButtonClick();定义点击“存为新生词本”按钮的快捷键函数
	ControlClick("生词本", "", "Button15")
EndFunc   ;==>SaveButtonClick

