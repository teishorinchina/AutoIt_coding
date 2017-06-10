#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=K:\Program Files\koda_1.7.3.0\Forms\第十六课-初识GUI.kxf
$Form1 = GUICreate("Form1", 455, 268, 647, 262)
$Label1 = GUICtrlCreateLabel("我爱", 40, 40, 108, 33)
$Button1 = GUICtrlCreateButton("按钮", 120, 176, 177, 49)
$Input1 = GUICtrlCreateInput("", 168, 40, 185, 21)
$Label2 = GUICtrlCreateLabel("", 40, 96, 316, 41)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1
			$r1 = GUICtrlRead($Label1)
			$r2 = GUICtrlRead($Input1)
			GUICtrlSetData($Label2,$r1 & $r2)
	EndSwitch
WEnd
