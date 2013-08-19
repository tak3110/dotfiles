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

NeoBundle 'scrooloose/nerdtree'

filetype plugin indent on     " required!
filetype indent on
syntax on


set list                " �s�������̉���
set number              " �s�ԍ��̕\��
set wrap                " �����e�L�X�g�̐܂�Ԃ�
set textwidth=0         " �����I�ɉ��s������̂𖳌���
set colorcolumn=80      " ���̑���80�����ڂɃ��C��������

" �O����I�X�N���[���x���𖳌���
set t_vb=
set novisualbell

" �f�t�H���g�s�������͔������Ȃ��̂�Unicode���Y���
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<

