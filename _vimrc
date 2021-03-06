" set nocompatible               " be iMproved
filetype off

execute 'let $PATH="' . escape($PATH, '\\') . ';' . escape($HOME, '\\' ) .'\\vimfiles\\bin\\win\\ag4mingw"'

if has('vim_starting')
  set runtimepath+=~/vimfiles/bundle/neobundle.vim
endif


call neobundle#begin(expand('~/vimfiles/bundle/'))
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
" NeoBundle 'Shougo/vimproc'
" NeoBundle 'VimClojure'
" NeoBundle 'Shougo/vimshell'
" NeoBundle 'Shougo/unite.vim'
" NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'jpalardy/vim-slime'
" NeoBundle 'scrooloose/syntastic'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'
""NeoBundle 'scrooloose/nerdtree'
""NeoBundle 'rking/ag.vim'
call neobundle#end()


filetype plugin indent on     " required!
filetype indent on
" syntax on



if (has('python'))

	call neobundle#begin(expand('~/vimfiles/bundle/'))
	NeoBundleLazy "davidhalter/jedi-vim", {
	      \ "autoload": {
	      \   "filetypes": ["python", "python3", "djangohtml"],
	      \ },
	      \ "build": {
	      \   "mac": "pip install jedi",
	      \   "unix": "pip install jedi",
	      \ }}
	call neobundle#end()

	let s:hooks = neobundle#get_hooks("jedi-vim")
	function! s:hooks.on_source(bundle)
	    " jediにvimの設定を任せると'completeopt+=preview'するので
	    " 自動設定機能をOFFにし手動で設定を行う
	    let g:jedi#auto_vim_configuration = 1
	    " 補完の最初の項目が選択された状態だと使いにくいためオフにする
	    let g:jedi#popup_select_first = 0
"	    " quickrunと被るため大文字に変更
"	    let g:jedi#rename_command = '<Leader>R'
"	    " gundoと被るため大文字に変更 (2013-06-24 10:00 追記）
"	    let g:jedi#goto_command = '<Leader>G'
	endfunction

	call neobundle#begin(expand('~/vimfiles/bundle/'))
"	 NeoBundle 'andviro/flake8-vim'
	call neobundle#end()

	" 保存時に自動でチェック
	let g:PyFlakeOnWrite = 1

	" 解析種別を設定
	let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'

	" McCabe複雑度の最大値
	let g:PyFlakeDefaultComplexity=10

	" visualモードでQを押すと自動で修正
	let g:PyFlakeRangeCommand = 'Q'

	call neobundle#begin(expand('~/vimfiles/bundle/'))
	" NeoBundle 'hynek/vim-python-pep8-indent'
	call neobundle#end()

	call neobundle#begin(expand('~/vimfiles/bundle/'))
	NeoBundle "nathanaelkane/vim-indent-guides"
	call neobundle#end()

	let s:hooks = neobundle#get_hooks("vim-indent-guides")
	function! s:hooks.on_source(bundle)
	  let g:indent_guides_guide_size = 1
	  IndentGuidesEnable " 2013-06-24 10:00 追記
	endfunction


endif


" 不可視文字の可視化
set list
" 行番号の表示
set number
" 長いテキストの折り返し
set wrap
" 自動的に改行が入るのを無効化
set textwidth=0
set colorcolumn=80
" 表示行のラインを強調表示
set cursorline


" python用にタブを空白で処理する
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4




" 前時代的スクリーンベルを無効化
set t_vb=
set novisualbell

"------------------------------------
" 挿入モードのリマップ
inoremap <C-space> <C-x><C-o>
inoremap <C-h> <DEL>
inoremap <C-j> <DOWN>
inoremap <C-k> <UP>
inoremap <C-l> <RIGHT>
inoremap <C-m> <CR>
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
inoremap ;; <ESC>
" 引用符, 括弧入力時にペアで対を入力してしまう
"inoremap { {}<Left>
"inoremap [ []<Left>
"inoremap ( ()<Left>
"inoremap " ""<Left>
"inoremap ' ''<Left>
"inoremap < <><Left>
"------------------------------------
" コマンドモードのリマップ
cnoremap <C-h> <DEL>
cnoremap <C-j> <DOWN>
cnoremap <C-k> <UP>
cnoremap <C-l> <TAB>
cnoremap <C-m> <CR>
cnoremap ;; <ESC>
"------------------------------------
" ノーマルモードのリマップ
noremap ; :
" 設定ファイルの読み込み
noremap ,ev :tabnew ~/_vimrc
" 設定ファイルの書き込み
noremap ,rv :source ~/_vimrc
