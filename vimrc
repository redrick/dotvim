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

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

nmap          <C-W>+     <C-W>+<SID>ws
nmap          <C-W>-     <C-W>-<SID>ws
nn <script>   <SID>ws+   <C-W>+<SID>ws
nn <script>   <SID>ws-   <C-W>-<SID>ws
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

" bind K to grep word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>
