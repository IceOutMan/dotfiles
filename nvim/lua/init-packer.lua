return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- surround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  })

  -- auto pair
  use {
	"windwp/nvim-autopairs",
    config = function() 
        require("nvim-autopairs").setup {} 
    end
  }

  -- status line
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- tab line
  use 'beauwilliams/statusline.lua'

  -- comment
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  -- nvim tree
  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
        require("nvim-tree").setup {}
    end
  }
  
  -- lsp config
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

-- go


  -- code formater
  use 'sbdchd/neoformat'
  -- ident config in init.lua
  use "lukas-reineke/indent-blankline.nvim"
  -- treesiter  code highlight
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }

  -- code runner
  use { 'michaelb/sniprun', run = 'bash ./install.sh' }
  use 'thinca/vim-quickrun'



  -- color scheme
  use { 'navarasu/onedark.nvim',
    config = function()
        require('onedark').load()
    end
  }

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup()
    end
  }

  -- use 'NTBBloodbath/doom-one.nvim'

  end)
