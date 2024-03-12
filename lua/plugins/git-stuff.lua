return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { desc = 'GitSigns Preview Hunk'})
      vim.keymap.set('n', '<leader>gi', ':Gitsigns preview_hunk_inline<CR>', { desc = 'GitSigns Preview Inline'})
    end
  },
  {
    "tpope/vim-fugitive",
  },
}
