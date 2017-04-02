@echo off

if %computername% EQU DESKTOP-Q10E396 goto install

:install
xcopy	/Y /F	"%cd%\curl.cmd"	"C:\Program Files\Git\cmd"	
cd 	"D:\Program Files (x86)\Vim"
ren	"D:\Program Files (x86)\Vim\vimfiles"	"vimfiles_bk"
ren	"D:\Program Files (x86)\Vim\_vimrc"	"_vim_bk"
mklink 	/D 	vimfiles	"D:\dotfiles\windows\_vim\vimfiles"
mklink 	/H 	_vimrc		"D:\dotfiles\windows\_vim\_vimrc"
