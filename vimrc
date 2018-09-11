" content of this file is loaded BEFORE all the plugins
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
source ~/.vim/bundles.vim  " vundle plugins list
source ~/.vim/global.vim   " general global configuration
source ~/.vim/plugins.vim  " configuration for plugins that needs to be set BEFORE plugins are loaded
source ~/.vim/macros.vim   " some macros
if has('gui_running')
  source ~/.vim/gvimrc     " gui specific settings
end

source ~/.vim/before.vim   " local BEFORE configs

colorscheme railscasts

" after.vim is loaded from ./after/plugin/after.vim
" which should place it AFTER all the other plugins in the loading order
" bindings.vim and local.vim are loaded from after.vim

au BufRead,BufNewFile *.es6 set filetype=javascript

" make test commands execute using dispatch.vim
let test#strategy = "dispatch"

" Remove default ri.vim key mappings
let g:ri_no_mappings=1

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

nmap          <C-W>+     <C-W>+<SID>ws
nmap          <C-W>-     <C-W>-<SID>ws
nn <script>   <SID>ws+   <C-W>+<SID>ws
nn <script>   <SID>ws-   <C-W>-<SID>ws
nmap          <C-W>>     <C-W>><SID>ws
nmap          <C-W><     <C-W><<SID>ws
nn <script>   <SID>ws>   <C-W>><SID>ws
nn <script>   <SID>ws<   <C-W><<SID>ws
nmap          <SID>ws    <Nop>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Reveal current file in tree
nmap ,f :NERDTreeFind<CR>

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

" New ri.vim key mappings
nnoremap  ,zs :call ri#OpenSearchPrompt(0)<cr> " horizontal split
nnoremap  ,zv :call ri#OpenSearchPrompt(1)<cr> " vertical split
nnoremap  ,zk :call ri#LookupNameUnderCursor()<cr> " keyword lookup"

" bind K to grep word under cursor
nnoremap KK :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>

"Remove all trailing whitespace by pressing F5
nnoremap <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

set shiftwidth=2
set tabstop=2

let g:notes_directories = ['~/Projects/notes/', '~/Projects/notes/Dennik/', '~/Projects/notes/Expert/', '~/Projects/notes/Bernard/']
