set CWD=%~dp0
echo %CWD%

mklink %HOMEPATH%\_vimrc %CWD%\_vimrc
mklink %HOMEPATH%\_gvimrc %CWD%\_gvimrc
mklink /D %HOMEAPTH%\vimfiles %CWD%\vimfiles
