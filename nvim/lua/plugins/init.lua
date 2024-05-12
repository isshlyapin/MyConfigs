return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },

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
  			"lua-language-server",
        "bash-language-server",
        "cmake-language-server",
        "autotools-language-server",
        "markdown-oxide",
  			"css-lsp",
        "asm-lsp",
        "clangd",
        "texlab",
        "pyright",
        "taplo",
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"lua",
        "html",
        "css",
        "cpp",
        "c",
        "asm",
        "python",
        "bash",
        "cmake",
        "markdown",
        "json",
        "doxygen",
        "hyprlang",
        "latex",
        "yaml",
        "toml"
  		},
  	},
  },
}
