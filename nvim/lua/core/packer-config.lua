local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
    return true
end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-tree.lua'           -- file tree
    use 'nvim-tree/nvim-web-devicons'       -- aesthetics
    use 'nvim-lualine/lualine.nvim'         -- aesthetics
    use 'xiyaowong/nvim-transparent'        -- KDE style aesthetics
    use 'nvim-treesitter/nvim-treesitter'   -- syntax highlighter
    use 'nvim-treesitter/nvim-treesitter-textobjects' -- additional text objects for treesitter
    use 'sar/illuminate.nvim'               -- highlights other uses of the word under the cursor
    use 'hrsh7th/nvim-cmp'                  -- autocompletion plugin.
    use 'lukas-reineke/virt-column.nvim'    -- thin colorcolumn line
    use 'folke/neodev.nvim'                 -- lsp configurations for nvim lua API
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'                  -- Snippets plugin.
    use {                                   -- fuzzy finder
    'nvim-telescope/telescope.nvim',
    tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {                                   -- lsp
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    }
    use {                                   -- buffer tabs
    'romgrk/barbar.nvim',
    requires = 'nvim-web-devicons'
    }
    use {                                   -- keymapping menu
    "folke/which-key.nvim",
    config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
    }
    end
    }
    use {                                   -- search and replace multiple files in the working directory
    's1n7ax/nvim-search-and-replace',
    config = function()
        require'nvim-search-and-replace'.setup()
    end,
    }
    use {                                   -- aesthetic start screen
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
    }
    use {                                   -- smart pair autocompletion
        'ZhiyuanLck/smart-pairs',
        event = 'InsertEnter',
        config = function()
            require('pairs'):setup()
    end
    }

    -- colorschemes
    use 'folke/tokyonight.nvim'
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use 'EdenEast/nightfox.nvim'
    use 'Mofiqul/dracula.nvim'
    use 'rafamadriz/neon'

    -- automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
