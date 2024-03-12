return {
  {
  "williamboman/mason.nvim",
  config = function()
    require('mason').setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {"tsserver"},
      } 
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()     

      local lspconfig = require("lspconfig")

      lspconfig.tsserver.setup({ capabilities = capabilities})

      vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, { desc = 'LSP Buffer Hover'})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Buffer Hover'})
      vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'LSP Buffer Definition'})
      vim.keymap.set({'n', 'v'}, '<leader>lc', vim.lsp.buf.code_action, { desc = 'LSP Code Actions'})
    end
  }
}
