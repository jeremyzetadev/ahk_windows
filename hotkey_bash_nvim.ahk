!a::Send,{Left}
!s::Send,{Down}
!w::Send,{Up}
!d::Send,{Right}
;!q::Send,{Escape}
;!e::Send,{Backspace}
;!r::SendRaw, ""
;!t::SendRaw,{}

!m::Send,a
!,::Send,b
!.::Send,c
!/::Send,d

;; !u::Send,w
;;;;;;;;;; Title: Open Buffer

!u::
SetTitleMatchMode, regex ; approximate match
isActive := false
IfWinExist, MINGW64:/*
{
	IfWinActive, MINGW64:/*
	{
		WinMinimize, MINGW64:/*
		isActive := true	
	}	
	if(!isActive)
	{
		WinActivate, MINGW64:/*
		Sleep 200 
	} 	
}
IfWinNotExist, MINGW64:/*
{
	Run, "C:\Program Files\Git\git-bash.exe"
}
Sleep 200 
return

!i::
SetTitleMatchMode, regex ; approximate match
isActive := false
IfWinExist, nvim-qt.exe
{
	IfWinActive, nvim-qt.exe
	{
		WinMinimize, nvim-qt.exe
		isActive := true	
	}	
	if(!isActive)
	{
		WinActivate, nvim-qt.exe
	} 	
}
IfWinNotExist, nvim-qt.exe
{
	Run, "C:\Program Files\Neovim\bin\nvim-qt.exe"
	Sleep 50
	Send !{Enter}
}
Sleep 200 
return


!o::Send,y
!p::Send,z

#a::Send,{Left}
#s::Send,{Down}
#w::Send,{Up}
#d::Send,{Right}
#j::Send,{Escape}
#k::Send,{Backspace}
#SPACE:: 
Send,{Enter}
return

^j::Send,{Escape}
^k::Send,{Backspace}

^SPACE:: 
Send,{Enter}
return

;^SPACE::
;While GetKeyState("LCtrl","P") 
;And GetKeyState("SPACE","P")
;{
;	Send,{Enter}
;	Sleep 50
;}
;return


^l::
SendRaw, ""
Send,{Left}
return

^;::
SendRaw,{}
Send,{Left}
return

LCtrl & {::
SendRaw, /
SendRaw, {
Send,{Enter}
Send, vi
SendRaw, {
return

LCtrl & (::
SendRaw, /
SendRaw, (
Send,{Enter}
Send, vi
SendRaw, (
return

LCtrl & "::
SendRaw, /
SendRaw, "
Send,{Enter}
Send, vi
SendRaw, "
return

LCtrl & }::
SendRaw, /
SendRaw, }
Send,{Enter}
Send, vi
SendRaw, }
return

LCtrl & )::
SendRaw, /
SendRaw, )
Send,{Enter}
Send, vi
SendRaw, )
return



;!j::Send, ^{Left}
;!l::Send, ^{Right}
;!k::SendRaw, {}






;PATHS
LAlt & F1::
While GetKeyState("LAlt","P")
And GetKeyState("F1","P") {
	Run, "D:\YMD\support"
	Sleep 200 
}
return

LAlt & F2::
While GetKeyState("LAlt","P")
And GetKeyState("F2","P") {
	Run, "C:\YMD\YNSE\SEF_JDG"
	Sleep 200 
}
return

LAlt & F3::
While GetKeyState("LAlt","P")
And GetKeyState("F3","P") {
	Run, "D:\YMD\support\test.txt"
	Sleep 200 
}
return

;LCtrl & F1::
;While GetKeyState("LCtrl","P")
;And GetKeyState("F1","P") {
;	Run, "C:\Users\SDG13\Documents\nvim-win64\bin\nvim.exe"
;	Sleep 200 
;}
;return


LCtrl & F1::
While GetKeyState("LCtrl","P")
And GetKeyState("F1","P") {

SetTitleMatchMode, 2 ; approximate match
isActive := false
IfWinExist, nvim.exe
{
	IfWinActive, nvim.exe
	{
		WinMinimize, nvim.exe
		isActive := true	
	}	
	if(!isActive)
	{
		WinActivate, nvim.exe
	} 	
}
IfWinNotExist, nvim.exe
{
	Run, "C:\Users\SDG13\Documents\nvim-win64\bin\nvim.exe"
}
	Sleep 200 
}
return


LCtrl & F2::
	Suspend, On
return


LCtrl & F3::
	Suspend, Off
return


LCtrl & F4::
While GetKeyState("LCtrl","P")
And GetKeyState("F4","P") {

SetTitleMatchMode, 2 ; approximate match
isActive := false
IfWinExist, - Notepad++
{
	IfWinActive, - Notepad++
	{
		WinMinimize, - Notepad++
		isActive := true	
	}	
	if(!isActive)
	{
		WinActivate, - Notepad++
	} 	
}
IfWinNotExist, nvim.exe
{
	Run, "C:\Program Files\Notepad++\notepad++.exe"
}
	Sleep 200 
}
return


LCtrl & F5::
While GetKeyState("LCtrl","P")
And GetKeyState("F5","P") {

SetTitleMatchMode Regex 
isActive := false
IfWinExist, YESS .*- Microsoft Visual Studio
{
	IfWinActive, YESS .*- Microsoft Visual Studio
	{
		WinMinimize, YESS .*- Microsoft Visual Studio
		isActive := true	 
	}		
	if(!isActive){
		WinActivate, YESS .*- Microsoft Visual Studio
	}
}
IfWinNotExist, YESS .*- Microsoft Visual Studio
{
	Run, "C:\YMD_Src\2020\IJCAD2020\YESS\YESS.sln"
}
	Sleep 200 
}
return



LCtrl & F6::
While GetKeyState("LCtrl","P")
And GetKeyState("F6","P") {

SetTitleMatchMode Regex 
isActive := false
IfWinExist, YNSESEF .*- Microsoft Visual Studio
{
	IfWinActive, YNSESEF .*- Microsoft Visual Studio
	{
		WinMinimize, YNSESEF .*- Microsoft Visual Studio
		isActive := true	 
	}		
	if(!isActive){
		WinActivate, YNSESEF .*- Microsoft Visual Studio
	}
}
IfWinNotExist, YNSESEF .*- Microsoft Visual Studio
{
	Run, "C:\YMD\YNSE\SEF_SRC\ynse_sefjoint\YNSESEF.sln"
}
	Sleep 200 
}
return



LCtrl & F7::
While GetKeyState("LCtrl","P")
And GetKeyState("F7","P") {

SetTitleMatchMode Regex 
isActive := false
IfWinExist, IJCAD 2020 PRO -.*
{
	IfWinActive, IJCAD 2020 PRO -.*
	{
		WinMinimize, IJCAD 2020 PRO -.*
		isActive := true	 
	}		
	if(!isActive){
		WinActivate, IJCAD 2020 PRO -.*
	}
}
IfWinNotExist, IJCAD 2020 PRO -.*
{
	Run, "C:\Program Files\ITJP\IJCAD 2020 PRO\gcad.exe"
}
	Sleep 200 
}
return






















;LAlt & {::
;While GetKeyState("LAlt","P")
;And GetKeyState("{","P") {
;Send, ^f
;Sleep 10
;Send {Shift Down}
;sleep 10
;Send {f3 Down} 
;sleep 10
;Send {Shift Up}{f3 Up}
;Sleep 10
;Send, {Esc}
;Sleep 10
;}
;return

;LAlt & }::
;While GetKeyState("LAlt","P")
;And GetKeyState("}","P") {
;Send, ^f
;Sleep 10
;Send, }
;Sleep 10
;Send, {Shift}{f3}
;Sleep 10
;Send, {Esc}
;Sleep 10
;}
;return


;LAlt & F1::
;While GetKeyState("LAlt","P")
;And GetKeyState("F1","P") {
;	Send, {e}
;	Sleep 400 
;}
;return

^1::
Send ^c
ClipWait
Clip1 := ClipBoardAll
return
!1::
ClipBoard := Clip1
Send ^v
return



;^1::
;Send "{+}yy
;Sleep 10
;ClipWait
;Clip1 := ClipBoardAll
;return

;!1::
;ClipBoard := Clip1
;Send,"{+}p
;return


;#1::
;Send {Enter}
;Sleep 10
;Send :let @+=expand('`%:p')
;Sleep 10
;Send {Enter}
;ClipBoard := Clip1
;Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
;return


;================================================ TEMPORARY/ IF can implement in full nvim/fzf better
;================================================ COPY/PASTE NVIM_AHK_FZF
;================================================ COPY/PASTE NVIM_AHK_FZF
CopyFrom_Folder := ""
CopyFrom_FileName := ""
CopyFrom_FULLPATH :=""
CopyTo_Folder := ""
CopyTo_FULLPATH := ""

;#IfWinActive, C:\Program Files\Neovim\bin\nvim-qt.exe
;{
^i::
CopyFrom_FULLPATH :=""
CopyTo_FULLPATH := ""
CopyFrom_FULLPATH := SubStr(Clipboard,1,InStr(Clipboard,"",,0))
MsgBox, %CopyFrom_FULLPATH%
return
		
^p::
CopyTo_FULLPATH := SubStr(Clipboard,1,InStr(Clipboard,"",,0))
;FileCopy, %CopyFrom_FULLPATH%, %CopyTo_FULLPATH%
MsgBox, %CopyTo_FULLPATH%
CopyFrom_FULLPATH :=""
CopyTo_FULLPATH := ""
return
;}
;================================================ COPY/PASTE NVIM_AHK_FZF
;================================================ COPY/PASTE NVIM_AHK_FZF

; @ vim init ->> nnoremap 'c   :let @+=expand('%:p')<CR>
#1::
Send, {Enter}
Sleep 100
Send, {Escape}
Sleep 100
Send, 'c
Sleep 100
Send, {Escape}
Sleep 100
ClipWait
Clip1 := ClipBoardAll
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return

!+1::
Send, {Enter}
Sleep 100
Send, {Escape}
Sleep 100
Send, 'c
Sleep 100
Send, {Escape}
Sleep 100
ClipWait
Clip1 := ClipBoardAll
Run %Clipboard%
return


;#1::
;Send :
;return

;#1::
;ClipBoard := Clip1
;Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
;return
;!+1::
;ClipBoard := Clip1
;Send %Clipboard%
;return

^2::
Send ^c
ClipWait
Clip2 := ClipBoardAll
return
!2::
ClipBoard := Clip2
Send ^v
return
#2::
ClipBoard := Clip2
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return
!+2::
ClipBoard := Clip2
Send %Clipboard%
return

^3::
Send ^c
ClipWait
Clip3 := ClipBoardAll
return
!3::
ClipBoard := Clip3
Send ^v
return
#3::
ClipBoard := Clip3
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return
!+3::
ClipBoard := Clip3
Send %Clipboard%
return

^4::
Send ^c
ClipWait
Clip4 := ClipBoardAll
return
!4::
ClipBoard := Clip4
Send ^v
return
#4::
ClipBoard := Clip4
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return
!+4::
ClipBoard := Clip4
Send %Clipboard%
return

^5::
Send ^c
ClipWait
Clip5 := ClipBoardAll
return
!5::
ClipBoard := Clip5
Send ^v
return
#5::
ClipBoard := Clip5
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return
!+5::
ClipBoard := Clip5
Send %Clipboard%
return

^6::
Send ^c
ClipWait
Clip6 := ClipBoardAll
return
!6::
ClipBoard := Clip6
Send ^v
return
#6::
ClipBoard := Clip6
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return
!+6::
ClipBoard := Clip6
Send %Clipboard%
return

^7::
Send ^c
ClipWait
Clip7 := ClipBoardAll
return
!7::
ClipBoard := Clip7
Send ^v
return
#7::
ClipBoard := Clip7
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return
!+7::
ClipBoard := Clip7
Send %Clipboard%
return

^8::
Send ^c
ClipWait
Clip8 := ClipBoardAll
return
!8::
ClipBoard := Clip8
Send ^v
return
#8::
ClipBoard := Clip8
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return
!+8::
ClipBoard := Clip8
Send %Clipboard%
return

^9::
Send ^c
ClipWait
Clip9 := ClipBoardAll
return
!9::
ClipBoard := Clip9
Send ^v
return
#9::
ClipBoard := Clip9
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return
!+9::
ClipBoard := Clip9
Send %Clipboard%
return

^0::
Send ^c
ClipWait
Clip0 := ClipBoardAll
return
!0::
ClipBoard := Clip0
Send ^v
return
#0::
ClipBoard := Clip0
Run % SubStr(Clipboard,1,InStr(Clipboard,"\",,0))
return
!+0::
ClipBoard := Clip0
Send %Clipboard%
return