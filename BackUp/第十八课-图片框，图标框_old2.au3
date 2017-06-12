#include <GUIConstantsEx.au3>
#include <staticconstants.au3>
#include <windowsconstants.au3>
$Form1 = GUICreate("图片查看器", 215, 255, -1, -1)
$Pic1 = GUICtrlCreatePic("", 16, 16, 180, 180)
$Icon1 = GUICtrlCreateIcon(@ScriptDir & "\left.ico",-1,40,208,32,32)
$Icon2 = GUICtrlCreateIcon(@ScriptDir & "\right.ico",-1,136,208,32,32)

_main()
Exit

Func _main()
Local $Pic = 1
Local $pic_lujing = _$pic_lu()
GUICtrlSetImage($pic,$pic_lujing[$pic])

EndFunc
