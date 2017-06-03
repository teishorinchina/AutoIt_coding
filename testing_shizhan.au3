#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         dingxiaolin
GithubId:        teishorinchina
E-mail:          shandongdxl2016@gmail.com
脚本用途：
 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

$file = FileOpen("WordList.txt")
While 1
	$line = FileReadLine($file)
	if @error = -1 then ExitLoop
	CopyEntryFromCollinsToWordPad($line,"Document - WordPad")
WEnd

Func CopyEntryFromCollinsToWordPad($Entry,$WordPadTitle = "文档 - 写字板",$CollinsTitle = "Collins COBUILD - Lexicon")
	ControlSend($CollinsTitle, "","Edit2",$Entry & "{Enter}", 0)
	WinWait($CollinsTitle,"")
	if not WinActivate($CollinsTitle,"") Then
		WinActivate($CollinsTitle,"")
		send("{ALTDOWN}{ALTUP}ee")