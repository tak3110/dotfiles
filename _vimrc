" set encoding=utf-8

set nocompatible               " be iMproved
filetype off


if has('vim_starting')
  set runtimepath+=~/vimfiles/bundle/neobundle.vim
  call neobundle#rc(expand('~/vimfiles/bundle/'))
endif
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

filetype plugin indent on     " required!
filetype indent on
syntax on




" 2013-07-03 14:30 ���������v��������ԈႦ�Ă����̂ŏC��
"NeoBundleLazy "davidhalter/jedi-vim", {
"      \ "autoload": {
"      \   "filetypes": ["python", "python3", "djangohtml"],
"      \   "build": {
"      \     "mac": "pip install jedi",
"      \     "unix": "pip install jedi",
"      \   }
"      \ }}
NeoBundleLazy "davidhalter/jedi-vim", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"],
      \ },
      \ "build": {
      \   "mac": "pip install jedi",
      \   "unix": "pip install jedi",
      \ }}
"let s:hooks = neobundle#get_hooks("jedi-vim")
"function! s:hooks.on_source(bundle)
"  " jedi��vim�̐ݒ��C�����'completeopt+=preview'����̂�
"  " �����ݒ�@�\��OFF�ɂ��蓮�Őݒ���s��
"   let g:jedi#auto_vim_configuration = 1
"  " �⊮�̍ŏ��̍��ڂ��I�����ꂽ��Ԃ��Ǝg���ɂ������߃I�t�ɂ���
"  let g:jedi#popup_select_first = 0
"  " quickrun�Ɣ�邽�ߑ啶���ɕύX
"  let g:jedi#rename_command = '<Leader>R'
"  " gundo�Ɣ�邽�ߑ啶���ɕύX (2013-06-24 10:00 �ǋL�j
"  let g:jedi#goto_command = '<Leader>G'
"endfunction




NeoBundle 'andviro/flake8-vim'

"�ۑ����Ɏ����Ń`�F�b�N
let g:PyFlakeOnWrite = 1

"��͎�ʂ�ݒ�
let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'

"McCabe���G�x�̍ő�l
let g:PyFlakeDefaultComplexity=10

"visual���[�h��Q�������Ǝ����ŏC��
let g:PyFlakeRangeCommand = 'Q'



NeoBundle 'hynek/vim-python-pep8-indent'




NeoBundle "nathanaelkane/vim-indent-guides"
" let g:indent_guides_enable_on_vim_startup = 1 2013-06-24 10:00 �폜
let s:hooks = neobundle#get_hooks("vim-indent-guides")
function! s:hooks.on_source(bundle)
  let g:indent_guides_guide_size = 1
  IndentGuidesEnable " 2013-06-24 10:00 �ǋL
endfunction



set list                " �s�������̉���
set number              " �s�ԍ��̕\��
set wrap                " �����e�L�X�g�̐܂�Ԃ�
set textwidth=0         " �����I�ɉ��s������̂𖳌���
set colorcolumn=80      " ���̑���80�����ڂɃ��C��������

" �O����I�X�N���[���x���𖳌���
set t_vb=
set novisualbell

" �f�t�H���g�s�������͔������Ȃ��̂�Unicode���Y���
" set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<


inoremap <C-space> <C-x><C-o>

