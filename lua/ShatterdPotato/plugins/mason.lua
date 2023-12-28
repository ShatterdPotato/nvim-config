local mason = require("mason")

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
  "pylsp"
  },
})


