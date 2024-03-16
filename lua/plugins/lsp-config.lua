return {
  {
  "williamboman/mason.nvim",
    lazy = false,
  config = function()
    require('mason').setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()     

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, { desc = 'LSP Buffer Hover'})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Buffer Hover'})
      vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'LSP Buffer Definition'})
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { desc = 'LSP References ' })
      vim.keymap.set({'n', 'v'}, '<leader>lc', vim.lsp.buf.code_action, { desc = 'LSP Code Actions'})
    end
  }
}
