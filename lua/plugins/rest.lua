return {
   "rest-nvim/rest.nvim",
   dependencies = {"nvim-lua/plenary.nvim"},
   ft = 'http',
   config = function()
    require("rest-nvim").setup({})

    vim.keymap.set('n','<leader>rr', '<Plug>RestNvim', {desc = 'Run REST route'})
    vim.keymap.set('n','<leader>rl', '<Plug>RestNvimPreview', { noremap = true, buffer = buff, desc = 'Last REST route'})
    vim.keymap.set('n','<leader>rp', '<Plug>RestNvimLast', { noremap = true, buffer = buff, desc = 'Run REST'})
  end
}
