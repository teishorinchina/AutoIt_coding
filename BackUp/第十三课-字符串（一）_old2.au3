;Local $a = "I like ""AU3"" "
;Local $a = 'I like "AU3"'
#cs
Local $a = Chr(65)
MsgBox(0, "65执行Chr函数", $a)
Local $b = Asc("A")
MsgBox(0, "A执行Asc函数", $b)
#ce

Local $s = "这是第一行"&Chr(13)&chr(10)&"这是第二行"
MsgBox(0,"","换行符示例："&$s)

