return {
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000 ,
  --   config = true,
  -- },

  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
    main = "ibl",
    opts = {}
  },

  -- {
  --   "stevearc/conform.nvim",
  --   -- event = 'BufWritePre', -- uncomment for format on save
  --   config = function()
  --     require "configs.conform"
  --   end,
  -- },
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   opts = {
  --     view = { width = 25 },
  --   },
  -- },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"html-lsp", "css-lsp" , "prettier",
  			"cmake-language-server",
        "lua-language-server",
        "stylua",
  		  "clangd",
	      "asm-lsp",
	      "bash-language-server",
        "dot-language-server"
      },
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc", "html", "css",
        "bash",
        "c",
        "cpp",
        "dot",
        "asm",
        "make",
        "cmake",
  		},
  	},
  },
}
