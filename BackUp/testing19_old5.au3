#Region
#AccAu3Wrapper_Icon=										;����ͼ��
#AccAu3Wrapper_UseX64=n										;�Ƿ����Ϊ64λ����(y/n)
#AccAu3Wrapper_OutFile=										;�����Exe����
#AccAu3Wrapper_OutFile_x64=									;64λ�����Exe����
#AccAu3Wrapper_UseUpx=n										;�Ƿ�ʹ��UPXѹ��(y/n) ע:����ѹ����������������
#AccAu3Wrapper_Res_Comment=									;����ע��
#AccAu3Wrapper_Res_Description=								;��������
#AccAu3Wrapper_Res_Fileversion=1.0.0.1						;�ļ��汾
#AccAu3Wrapper_Res_FileVersion_AutoIncrement=y				;�Զ����°汾 y/n/p=�Զ�/���Զ�/ѯ��
#AccAu3Wrapper_Res_ProductVersion=1.0						;��Ʒ�汾
#AccAu3Wrapper_Res_Language=2052							;��Դ����, Ӣ��=2057/����=2052
#AccAu3Wrapper_Res_LegalCopyright=							;�����Ȩ
#AccAu3Wrapper_Res_RequestedExecutionLevel=					;����Ȩ��: None/asInvoker/highestAvailable/requireAdministrator
#AccAu3Wrapper_Run_Tidy=y									;����ǰ�Զ������ű�(y/n)
#AccAu3Wrapper_Run_Obfuscator=y								;���ýű�����(y/n)
#Obfuscator_Parameters=/cs=1 /cn=1 /cf=1 /cv=1 /sf=1 /sv=1	;�ű����ܲ���: 0/1������/����, /cs�ַ��� /cn���� /cf������ /cv������ /sf������ /sv�������
#AccAu3Wrapper_DBSupport=y									;ʹ�ַ�������֧��˫�ֽ��ַ�(y/n) <- �ɶ������ַ���ʵ���ַ�������
#AccAu3Wrapper_AntiDecompile=y								;�Ƿ����÷�������(y/n) <- �򵥷���, ����Ӧ��ɵ��ʽ�����빤��
#EndRegion

#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

	��ӭʹ�� AutoIt v3 ���İ� !

	IT���:		https://www.itiankong.com/
	Au3ר��:	https://www.itiankong.net/forum-au3-1.html

	Au3�汾:	3.3.14.2
	�ű�����:   ��Х��
	�ű�����:
	������־:
	��ϵ��ʽ:

#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

$file = FileOpen("wordlist.txt", 0)
While 1
	$line = FileReadLine($file) ;���ļ���ȡ��һ������ĸ
	If @error = -1 Then ExitLoop ;test if sum of character values in this word equals to 100,if so , print it to the output...
	$wordLowerCase = StringLower($line);��ÿ����ĸת��ΪСд
	$Characters = StringSplit($wordLowerCase,"");��ת��ΪСд���ַ������һ������������ĸ����������
	$sum = 0 ;����ͱ���
	For $i = 1 To $Characters[0] ;Characters�����һ��ֵΪ�õ��ʵĳ��ȣ��ʿ�������ѭ������ֹ����
		$sum = $sum + Asc($Characters[$i])-96   ;sum����ÿ���ַ���asc��ֱ��ȥ96�����
	Next
	MsgBox(0,$line,$sum) ;������� �� ÿ�����ʵ���ĸ֮��
	
WEnd
FileClose($file)


;#include <Array.au3>
;$a = StringSplit("Success", "")
;_ArrayDisplay($a)
