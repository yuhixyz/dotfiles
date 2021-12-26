" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " easymotion
  function! Cond(Cond, ...)
    let opts = get(a:000, 0, {})
    return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
  endfunction
  Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
  Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })

  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'

  " status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " themes
  Plug 'arcticicestudio/nord-vim'
  Plug 'drewtempelmeyer/palenight.vim'

  " Stable version of coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
  " ranger
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
 
  " " startify
  " Plug 'mhinz/vim-startify'
  " dashboard
  Plug 'glepnir/dashboard-nvim'

  " fuzzy file finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

  " vim-tmux navigation 
  Plug 'christoomey/vim-tmux-navigator'

  " rust
  Plug 'rust-lang/rust.vim'

  " close single buffer
  Plug 'moll/vim-bbye' 

  " ae ie to select entire file content
  Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-entire'

  " floaterm
  Plug 'voldikss/vim-floaterm'

  " markdown preview (need nodejs and yarl)
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  
  " showcolor
  Plug 'norcalli/nvim-colorizer.lua'
  
  " snippets
  Plug 'honza/vim-snippets'
  
  " ps: conficts with rainbow
  Plug 'vimwiki/vimwiki'

call plug#end()
