return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { 'neoclide/coc.nvim', branch = 'release' }

  use 'folke/tokyonight.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
  }

  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'mfussenegger/nvim-dap'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use {
    "windwp/nvim-autopairs",
  }

  use {
    'lewis6991/gitsigns.nvim',
    tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }

  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

end)
