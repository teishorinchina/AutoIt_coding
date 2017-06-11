#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>

$hGUI = GUICreate("十年电费对比器", 500, 400, -1, -1)
$hGroup = GUICtrlCreateGroup("品牌一数据", 20, 20, 225, 85)
$hGroup2 = GUICtrlCreateGroup("品牌二数据", 252, 20, 225, 85)
$hLabel = GUICtrlCreateLabel("功率:", 35, 55, 47, 15)
$hLabel2 = GUICtrlCreateLabel("功率:", 265, 55, 41, 14)
$hInput_pinpai1 = GUICtrlCreateInput("", 89, 52, 50, 20)
$hLabel3 = GUICtrlCreateLabel("单位：瓦", 151, 55, 65, 25)
$hInput_pinpai2 = GUICtrlCreateInput("", 315, 52, 50, 20)
$hLabel4 = GUICtrlCreateLabel("单位：瓦", 381, 55, 65, 25)
$result_Label = GUICtrlCreateLabel("对比结果：", 22, 172, 447, 136)
GUICtrlSetStyle(-1, -1)
GUICtrlSetData(-1, "")
$hLabel6 = GUICtrlCreateLabel("每天使用时长：", 24, 118, 85, 17)
$hInput_shichang = GUICtrlCreateInput("", 119, 118, 37, 16)
$hLabel7 = GUICtrlCreateLabel("小时", 166, 118, 71, 20)
$hLabel8 = GUICtrlCreateLabel("对比结果(电费按0.5元计算)", 223, 149, 157, 14)
$hButton = GUICtrlCreateButton("开始对比", 189, 329, 110, 35)
GUISetState()

While 1
	$hMsg = GUIGetMsg()
	Local $result_string ;结果输出的字符串
	Local $result_pinpai1 ;品牌1结果
	Local $result_pinpai2 ;品牌2结果
	Local $chazhi ;两者的差值
	Switch $hMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $hButton
			If Not(GUICtrlRead($hInput_pinpai1) And GUICtrlRead($hInput_pinpai2) And GUICtrlRead($hInput_shichang)) Then
				MsgBox(0, "错误提示", "请输入各项数值，输入不能为空！")
			Else
				$result_pinpai1 = GUICtrlRead($hInput_pinpai1) * GUICtrlRead($hInput_shichang) * 365 * 10 / 1000 / 2 ;完整公式为 ： 额定功率*每天使用时长*365天*10年/1000瓦时*0.5电费
				$result_pinpai2 = GUICtrlRead($hInput_pinpai2) * GUICtrlRead($hInput_shichang) * 365 * 10 / 1000 / 2 ;完整公式为 ： 额定功率*每天使用时长*365天*10年/1000瓦时*0.5电费
				$chazhi  = Abs($result_pinpai1 - $result_pinpai2) ;求两者之差的绝对值
				$result_string = '品牌一，十年共计电费 ' & $result_pinpai1 & ' 元 人民币' & @CRLF&@CRLF&@CRLF & '品牌二，十年共计电费 ' & $result_pinpai2 & ' 元 人民币' & @CRLF&@CRLF&@CRLF&'两者相差 '&$chazhi &' 元 人民币'
				GUICtrlSetData($result_Label, $result_string) ;输出结果文本
			EndIf
	EndSwitch
WEnd

