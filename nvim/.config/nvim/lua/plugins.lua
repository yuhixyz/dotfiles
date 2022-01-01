local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- packer self
    use 'wbthomason/packer.nvim'
  
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require'nvim-tree'.setup {} end
    }
  
    use 'christoomey/vim-tmux-navigator'

    use 'tpope/vim-commentary'
  
    use 'tpope/vim-surround'

    use 'jiangmiao/auto-pairs'
  
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

    -- fzf-lua
    use { 
        'ibhagwan/fzf-lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- floaterm
    use 'voldikss/vim-floaterm'
    
    -- snippets
    use 'honza/vim-snippets'

    use {
        'vimwiki/vimwiki',
        config = function()
            vim.g.vimwiki_global_ext = 0
            vim.g.vimwiki_list = {
                {
                    path = '~/vimwiki/',
                    syntax = 'markdown',
                    ext = '.md',
                }
            }
            vim.g.vimwiki_markdown_link_ext = 1
            vim.g.vimwiki_conceallevel = 2
        end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
