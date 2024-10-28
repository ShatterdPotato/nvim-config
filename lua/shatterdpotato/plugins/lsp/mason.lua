return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "ast_grep",
        "clangd",
        "cssls",
        "html",
        "jdtls",
        "ts_ls",
        "jsonls",
        "lua_ls",
        "pyright",
        "rust_analyzer",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua",
        "isort",    -- python formatter
        "black",    -- python formatter
        "clang-format",
        "rustfmt",
        "google-java-format",
        "pylint",   -- python linter
        "eslint_d", -- js linter
      },
    })
  end,
}
