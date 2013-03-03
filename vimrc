se ts=2 sw=2
se expandtab
syntax enable
se hlsearch
se ruler
filetype plugin on
se fileformats=unix
se invpaste paste

let NERDTreeMouseMode=2
nnoremap <F5> :call ToggleNT()<CR>
function! ToggleNT()
  NERDTreeToggle
  if &mouse == 'a'
    set mouse=c
  else
    set mouse=a
  endif
endfunction

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

if has('gui_running')
  autocmd VimEnter * NERDTree
  set gfn=Monaco:h12
  " set mousefocus
  " let NERDTreeMouseMode=3
  map <F1> :set gfn=Monaco:h11<CR>
  map <F2> :set gfn=Monaco:h12<CR>
  map <F3> :set gfn=Monaco:h14<CR>
  map <F4> :set gfn=Monaco:h16<CR>
  se ic
endif
