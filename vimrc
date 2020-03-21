"set tags+=./tags;      "set the current directory as the project root directory.


"colorscheme desert  "colore scheme
colorscheme molokai "colore scheme

set colorcolumn=81
set textwidth=81
set cursorline          "add line at the cursor position
set incsearch
set laststatus=2        "show or hide status infomration under screen
set mouse=a
set number              "show line number
set nobackup            "don't backup file after edit
set nocompatible        "setting for vim
set hlsearch            "highlight the search result
set history=100         "set history number
set tabstop=8           "set tab key width
set ttymouse=xterm2     "support mouse middle roll button
set t_Co=256
set shiftwidth=8        "auto-indent amount when using cindent
set smartindent         "smart indent
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
syntax enable       "enable syntax
syntax on           "syntax on

nmap <F6> :noh <CR>
"hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
hi Conditional cterm=none ctermfg=Yellow
hi Comment cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi Constant cterm=bold ctermfg=magenta
"hi ColorColumn cterm=none ctermbg=Red
hi Error cterm=Italic ctermfg=Red ctermbg=NONE
hi ExtraWhitespace ctermfg=red ctermbg=White
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi Macro cterm=bold ctermfg=magenta ctermbg=NONE
hi Number cterm=bold ctermfg=Yellow
hi Include cterm=bold ctermfg=Red ctermbg=NONE
"hi PreCondi cterm=bold ctermfg=Red ctermbg=NONE
hi Visual cterm=bold ctermfg=Black ctermbg=DarkGrey
"hi VertSplit ctermfg=DarkGrey ctermbg=Grey
hi Search cterm=none ctermbg=Yellow
hi Structure cterm=none ctermfg=Green
hi StatusLine cterm=none ctermfg=Black ctermbg=Grey
hi StatusLineNC cterm=none ctermbg=Black
hi Type cterm=none ctermfg=Green

if has("cscope")
    "set current directory as cscope root directory
    cs add ./

    nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

        " remapping quick call back
    nnoremap <F5> :cs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <F3> :cs find t <C-R>=expand("<cword>")<CR><CR>
endif

nnoremap <C-]> :tj <C-R>=expand("<cword>")<CR><CR>

    let Tlist_Show_One_File = 1
    let Tlist_Exit_OnlyWindow = 1
    let Tlist_Use_Right_Window = 1
    let Tlist_Ctags_Cmd = '/usr/bin/ctags'
    let Tlist_GainFocus_On_ToggleOpen = 1
    nnoremap <F2> :NERDTreeToggle<CR>
    nnoremap <F4> :TlistToggle<CR>

