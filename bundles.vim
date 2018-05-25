set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" plugin management
NeoBundleFetch 'Shougo/neobundle.vim'

" file tree
NeoBundle 'scrooloose/nerdtree'
" file tree and tabs interaction
NeoBundle 'jistr/vim-nerdtree-tabs'
" fuzzy file open
NeoBundle 'kien/ctrlp.vim'
" tags list navigation
NeoBundle 'taglist.vim'
" git integration
NeoBundle 'tpope/vim-fugitive'
" syntax checking on save
NeoBundle 'scrooloose/syntastic'
" manipulation of surraunding parens, quotes, etc.
NeoBundle 'tpope/vim-surround'
" vertical alignment tool
NeoBundle 'tsaleh/vim-align'
" 'ag' searching integration
NeoBundle 'rking/ag.vim'
" text object based on indent level (ai, ii)
NeoBundle 'austintaylor/vim-indentobject'
" global search & replace
NeoBundle 'greplace.vim'
" better looking statusline
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
" plugin for resolving three-way merge conflicts
NeoBundle 'sjl/splice.vim'
" end certain structures automatically, e.g. begin/end etc.
NeoBundle 'tpope/vim-endwise'
" automatic closing of quotes, parenthesis, brackets, etc.
NeoBundle 'Raimondi/delimitMate'
" calendar, duh!
NeoBundle 'calendar.vim--Matsumoto'
" url based hyperlinks for text files
NeoBundle 'utl.vim'
" A clone of Emacs' Org-mode for Vim
NeoBundle 'hsitz/VimOrganizer'
" visual undo tree
NeoBundle 'sjl/gundo.vim'
" switch segments of text with predefined replacements. e.g. '' -> ""
NeoBundle 'AndrewRadev/switch.vim'
" async external commands with output in vim
NeoBundle 'tpope/vim-dispatch'
" git diff in the gutter (sign column) and stages/reverts hunks
NeoBundle 'airblade/vim-gitgutter'
" hi-speed html coding
NeoBundle 'mattn/emmet-vim'
" editorconfig.org support
NeoBundle 'editorconfig/editorconfig-vim'

" Ruby/Rails

" rails support
NeoBundle 'tpope/vim-rails'
" bundler integration (e.g. :Bopen)
NeoBundle 'tpope/vim-bundler'
" A custom text object for selecting ruby blocks (ar/ir)
NeoBundle 'nelstrom/vim-textobj-rubyblock'
" ruby refactoring
NeoBundle 'ecomba/vim-ruby-refactoring'
" apidock.com docs integration
NeoBundle 'apidock.vim'
" toggle ruby blocks style
NeoBundle 'vim-scripts/blockle.vim'
" lightweight Rspec runner for Vim
NeoBundle 'josemarluedke/vim-rspec'
" i18n extraction plugin
NeoBundle 'stefanoverna/vim-i18n'

" syntax support
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'JSON.vim'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'vitaly/vim-syntastic-coffee'
NeoBundle 'vim-scripts/jade.vim'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'Blackrush/vim-gocode'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'

" Support and minor

" Support for user-defined text objects
NeoBundle 'kana/vim-textobj-user'
" replacement for the repeat mapping (.) to support plugins
NeoBundle 'tpope/vim-repeat'
" hide .gitignore-d files from vim
NeoBundle 'vitaly/vim-gitignore'
" repeat motion with <Space>
NeoBundle 'scrooloose/vim-space'
" Github's gist support
NeoBundle 'mattn/gist-vim'
" web APIs support
NeoBundle 'mattn/webapi-vim'

" Vim Filesearch
NeoBundle 'jeetsukumaran/vim-filesearch'

" Vim Railscasts theme
NeoBundle 'jpo/vim-railscasts-theme'

" Vim testing made easy
NeoBundle 'janko-m/vim-test'

" Vim Filesearch
NeoBundle 'jeetsukumaran/vim-filesearch'

" Vim railscasts theme :)
NeoBundle 'jgdavey/vim-railscasts'

" For commenting out blocks
NeoBundle 'tomtom/tcomment_vim'

" New JS ES6 snippets and syntax Highlighting
NeoBundle 'isRuslan/vim-es6'

" RI documentation bindings for vim
NeoBundle 'danchoi/ri.vim'

call neobundle#end()

filetype plugin indent on

