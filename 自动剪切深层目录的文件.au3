;@ScriptDir 脚本所在目录
#cs
函数 说明 
ConsoleRead 读 AutoIt 脚本进程中的 STDIN 
ConsoleWrite 写入数据到 STDOUT.一些文本编辑器可以读取这个流作为其它程序可接受的数据 
ConsoleWriteError 写入数据到 STDERR. 一些文本编辑器可以读取这个流作为其它程序可接受的数据 
DirCopy 复制目录及其所有子目录和文件(类似 xcopy 命令) 
DirCreate 创建目录/文件夹 
DirGetSize 返回指定目录的大小(字节) 
DirMove 移动目录及其所有子目录和文件 
DirRemove 删除目录/文件夹 
DriveGetDrive 返回枚举驱动器的数组 
DriveGetFileSystem 返回驱动器的文件系统类型 
DriveGetLabel 返回驱动器的卷标(如果存在) 
DriveGetSerial 返回驱动器序列号 
DriveGetType 返回驱动器类型 
DriveMapAdd 映射网络驱动器 
DriveMapDel 断开网络驱动器 
DriveMapGet 获取映射驱动器的详细资料 
DriveSetLabel 修改驱动器卷标 
DriveSpaceFree 返回路径磁盘的可用空间(MB) 
DriveSpaceTotal 返回路径磁盘的总空间(MB) 
DriveStatus 返回驱动器的状态 
FileChangeDir 更改当前工作目录 
FileClose 关闭先前打开的文件 
FileCopy 复制一或多个文件 
FileCreateNTFSLink 创建 NTFS 硬连接到文件或目录 
FileCreateShortcut 创建文件的快捷方式(.lnk) 
FileDelete 删除一或多个文件 
FileExists 检查文件或目录是否存在 
FileFindFirstFile 指定路径和文件掩码创建搜索句柄 
FileFindNextFile 返回搜索句柄指定的下一个文件名 
FileFlush 刷新缓冲区文件到磁盘 
FileGetAttrib 返回文件的属性代码 
FileGetEncoding 检测文件使用的文本编码 
FileGetLongName 返回完整路径名称 
FileGetPos 检索当前文件的位置 
FileGetShortcut 获取快捷方式的详细资料 
FileGetShortName 返回 8.3 格式短路径名称 
FileGetSize 返回文件的字节大小 
FileGetTime 返回文件的时间和日期信息 
FileGetVersion 返回文件的版本信息 
FileInstall 包含并装入文件到编译脚本 
FileMove 移动一或多个文件 
FileOpen 打开文件以供读取或写入 
FileOpenDialog 启动打开文件对话框 
FileRead 读取先前打开文本文件中指定数量的字符 
FileReadLine 读取文本文件指定行的文本 
FileReadToArray 读取指定文件到一个数组中 
FileRecycle 删除文件或目录到回收站 
FileRecycleEmpty 清空回收站 
FileSaveDialog 启动保存文件对话框 
FileSelectFolder 启动浏览文件夹对话框 
FileSetAttrib 设置一或多个文件或目录的属性 
FileSetEnd 设置当前文件的位置到文件末尾 
FileSetPos 设置当前文件的位置 
FileSetTime 设置一或多个文件的时间戳 
FileWrite 写文本/数据到先前打开的文件 
FileWriteLine 添加一行文本到打开的文本文件尾部 
IniDelete 删除配置文件(*.ini)的值 
IniRead 读配置文件(*.ini)的值 
IniReadSection 读配置文件(*.ini)字段的全部关键字与值 
IniReadSectionNames 读配置文件(*.ini)的全部字段信息 
IniRenameSection 重命名配置文件(*.ini)的字段名 
IniWrite 写标准格式的配置文件(*.ini) 
IniWriteSection 写配置文件(*.ini)的字段数据 
#ce

#include <MsgBoxConstants.au3>

_DirSearch()

Func _DirSearch()
	; Assign a Local variable the search handle of all files in the current directory.
	Local $hSearch = FileFindFirstFile("*.*")

	; Check if the search was successful, if not display a message and return False.
	If $hSearch = -1 Then
		MsgBox($MB_SYSTEMMODAL, "", "Error: No files/directories matched the search pattern.")
		Return False
	EndIf

	; Assign a Local variable the empty string which will contain the files names found.
	Local $sFileName = "", $iResult = 0

	While 1
		$sFileName = FileFindNextFile($hSearch)
		; If there is no more file matching the search.
		If @error Then ExitLoop

		; Display the file name.
		$iResult = MsgBox(BitOR($MB_SYSTEMMODAL, $MB_OKCANCEL), "", "File: " & $sFileName)
		If $iResult <> $IDOK Then ExitLoop ; If the user clicks on the cancel/close button.
	WEnd

	; Close the search handle.
	FileClose($hSearch)
EndFunc   ;==>Example
































