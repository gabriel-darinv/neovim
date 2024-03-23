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
      local on_attach = require('cmp_nvim_lsp').on_attach

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          client.server_capabilities.signatureHelpProvider = false
          on_attach(client, bufnr)
        end
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          client.server_capabilities.signatureHelpProvider = false
          on_attach(client, bufnr)
        end
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          client.server_capabilities.signatureHelpProvider = false
          on_attach(client, bufnr)
        end
      })

      vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'LSP Buffer Definition'})
      vim.keymap.set('n', '<leader>le', vim.lsp.buf.declaration, { desc = 'LSP Declaration'})
      vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, { desc = 'LSP Buffer Hover'})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Buffer Hover'})
      vim.keymap.set('n', "<leader>lr", vim.lsp.buf.references, { desc = 'LSP References ' })
      vim.keymap.set({'n', 'v'}, '<leader>lc', vim.lsp.buf.code_action, { desc = 'LSP Code Actions'})
      vim.keymap.set('i', '<C-c>', vim.lsp.buf.completion, { desc = 'LSP Completion'})
      vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename, { desc = 'LSP rename all ref'})
      vim.keymap.set('n', '<leader>lt', vim.lsp.buf.type_definition, { desc = 'LSP Definition of Type'})
      
    end
  }
}
