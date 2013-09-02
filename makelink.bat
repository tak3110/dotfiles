set CWD=%~dp0

mklink %USERPROFILE%\_vimrc %CWD%\_vimrc
mklink %USERPROFILE%\_gvimrc %CWD%\_gvimrc
mklink /D %USERPROFILE%\vimfiles %CWD%\vimfiles

pause
