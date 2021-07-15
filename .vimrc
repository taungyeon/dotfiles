set encoding=utf-8

" �t�@�C�����㏑������O�Ƀo�b�N�A�b�v����邱�Ƃ𖳌���
set nowritebackup
" �t�@�C�����㏑������O�Ƀo�b�N�A�b�v����邱�Ƃ𖳌���
set nobackup
" vim �̋�`�I���ŕ����������Ă��E�֐i�߂�
set virtualedit=block
" �}�����[�h�Ńo�b�N�X�y�[�X�ō폜�ł���悤�ɂ���
set backspace=indent,eol,start
" �S�p������p�̐ݒ�
set ambiwidth=double
" wildmenu�I�v�V������L��(vim�o�[����t�@�C����I���ł���)
set wildmenu

"----------------------------------------
" ����
"----------------------------------------
" ��������Ƃ��ɑ啶������������ʂ��Ȃ�
set ignorecase
" �������Ō�������Ƒ啶���Ə������𖳎����Č���
set smartcase
" �������t�@�C�������܂Ői�񂾂�A�t�@�C���擪����Ăь���
set wrapscan
" �C���N�������^������ (�������[�h�̍ŏ��̕�������͂������_�Ō������J�n)
set incsearch
" �������ʂ��n�C���C�g�\��
set hlsearch

"----------------------------------------
" �\���ݒ�
"----------------------------------------
" �G���[���b�Z�[�W�̕\�����Ƀr�[�v��炳�Ȃ�
set noerrorbells
" Windows�Ńp�X�̋�؂蕶�����X���b�V���ň���
set shellslash
" �Ή����銇�ʂ�u���[�X��\��
set showmatch matchtime=1
" �C���f���g���@�̕ύX
set cinoptions+=:0
" ���b�Z�[�W�\������2�s�m��
set cmdheight=2
" �X�e�[�^�X�s����ɕ\��
set laststatus=2
" �E�B���h�E�̉E���ɂ܂����s���Ă��Ȃ����͒��̃R�}���h��\��
set showcmd
" �ȗ����ꂸ�ɕ\��
set display=lastline
" �^�u������ CTRL-I �ŕ\�����A�s���� $ �ŕ\������
set list
" �s���̃X�y�[�X������
set listchars=tab:^\ ,trail:~
" �R�}���h���C���̗�����10000���ۑ�����
set history=10000
" �R�����g�̐F�𐅐F
hi Comment ctermfg=3
" ���̓��[�h��Tab�L�[�������ɔ��p�X�y�[�X��}��
set expandtab
" �C���f���g��
set shiftwidth=2
" �^�u�L�[�������ɑ}������镶�������w��
set softtabstop=2
" �t�@�C�����ɂ���^�u�����̕\����
set tabstop=2
" �c�[���o�[���\���ɂ���
set guioptions-=T
" y�ŃR�s�[�������ɃN���b�v�{�[�h�ɓ���
set guioptions+=a
" ���j���[�o�[���\���ɂ���
set guioptions-=m
" �E�X�N���[���o�[���\��
set guioptions+=R
" �Ή����銇�ʂ������\��
set showmatch
" ���s���ɓ��͂��ꂽ�s�̖����ɍ��킹�Ď��̍s�̃C���f���g�𑝌�����
set smartindent
" �X���b�v�t�@�C�����쐬���Ȃ�
set noswapfile
" �����Ƀ}�b�`�����s�ȊO��܂肽����(�t�H�[���h����)�@�\
set nofoldenable
" �^�C�g����\��
set title
" �s�ԍ��̕\��
set number
" �����N�ŃN���b�v�{�[�h�ɃR�s�[
set clipboard=unnamed,autoselect
" Esc��2�񉟂��Ńn�C���C�g����
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
" �V���^�b�N�X�n�C���C�g
syntax on
" ���ׂĂ̐���10�i���Ƃ��Ĉ���
set nrformats=
" �s���܂����ňړ�
set whichwrap=b,s,h,l,<,>,[,],~
" �o�b�t�@�X�N���[��
set mouse=a

" auto reload .vimrc
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

" HTML/XML���^�O�����⊮
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" �ҏW�ӏ��̃J�[�\�����L��
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif

"##################################
"# Vim�N�����ɁA���ʂ̗D��x���߂�ݒ�
"##################################

"# �t�@�C����ǂݍ��ގ��́A�����R�[�h�������ʂ̏���
:set fileencodings=utf-8,cp932,euc-jp,sjis
