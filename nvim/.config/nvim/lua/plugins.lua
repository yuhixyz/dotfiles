local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- packer self
    use 'wbthomason/packer.nvim'
    -- file explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require'nvim-tree'.setup {} end
    }
    -- vim-tmux-navigator
    use 'christoomey/vim-tmux-navigator'
    -- comment
    use 'tpope/vim-commentary'
    -- surround
    use 'tpope/vim-surround'
    -- ([{}])
    use 'jiangmiao/auto-pairs'
    -- easymotion
    use 'easymotion/vim-easymotion'
    -- colorscheme
    use 'drewtempelmeyer/palenight.vim'
    -- bufferline / tabline
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    -- dashboard
    use 'glepnir/dashboard-nvim'
    -- lsp
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- snippets
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    -- ae ie as text object
    use 'kana/vim-textobj-user'
    use 'kana/vim-textobj-entire'
    -- markdown preview
    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = {"markdown"}
    }
    -- fzf-lua  not work in gui nvim
    use {
        'ibhagwan/fzf-lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    -- fzf
	-- use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
	-- use {'junegunn/fzf.vim'}
    -- floaterm
    use 'voldikss/vim-floaterm'
    -- vimwiki
    use 'vimwiki/vimwiki'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
