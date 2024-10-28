return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
        enable = true,
      },
      ensure_installed = {
        "cpp",
        "c_sharp",
        "c",
        "css",
        "html",
        "java",
        "javascript",
        "json",
        "lua",
        "python",
        "rust",
        "vim",
      },
      incremental_selection = {
		    enable = true,
		    keymaps = {
			    init_selection = "<CR>",
			    node_incremental = "<CR>",
			    scope_incremental = "<Tab>",
			    node_decremental = "<S-Tab>",
		    },
	    },
    })
  end,
}

