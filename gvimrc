set guioptions=ce
set antialias
set linespace=2

if has("gui_macvim")
  set guifont=Monaco:h14
elseif has("gui_gtk")
  set guifont=Monospace\ 14
else
  set guifont=Monaco:h17
end

if has("gui_macvim")
  set transparency=0

  " disable IM while leaving insert mode
  " autocmd InsertEnter * set noimdisable
  " autocmd InsertLeave * set imdisable

  " move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <D-j> mz:m+<cr>`z
  nmap <D-k> mz:m-2<cr>`z
  vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

  " disable default menu hot key
  macmenu &File.New\ Window key=<nop>
  macmenu &File.Close key=<nop>

  " remap cmd + w to close tab
  map <D-w> :tabclose<CR>

  " remap cmd + n to new tab
  map <D-n> :tabnew<CR>

  " map cmd + enter to switch to full screen
  map <D-Enter> :set invfu<CR>

  " map cmd+1~9 to switch tab 1~9
  for i in range(1, 9)
    exec "nnoremap <D-".i."> ".i."gt"
  endfor

" added by xiongxoy
let do_syntax_sel_menu = 1|runtime! synmenu.vim|aunmenu &Syntax.&Show\ filetypes\ in\ menu
colorscheme wombat
set invfu
" move to markdown, added by xiongxoy
autocmd! BufNewFile,BufRead *.md set filetype=markdown

endif
