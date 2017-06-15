$a = FileExists(@HomeDrive & "\1")
If $a = 1 Then
	MsgBox(0, "","文件夹存在")
Else
	MsgBox(0,"","文件夹不存在")
EndIf
