" Set key mappings

" Turn on line numbering. Turn it off with "set nonu" 
set nu 

" Set syntax on
syntax on

" Indent automatically depending on filetype
filetype indent on
set autoindent

" Use filetype plugins
"filetype plugin on

" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" if has mouse, start using it
if has('mouse') 
  set mouse=a 
endif 

" Change colorscheme from default to delek
colorscheme koehler 

" Use spaces for tabs. Set tabwidth for vim to 2
set expandtab
set shiftwidth=2
set softtabstop=2

" Paste from another app with F2 to preserve indentation
set pastetoggle=<F2>

"" Plugins specific

" Add plugins to vim using Pathogen
"call pathogen#infect()
"call pathogen#helptags()

" set pydiction autcompletion dict path
"let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict' 

