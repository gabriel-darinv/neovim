return {
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      --Files
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope Find files'})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = 'Telescope Live Grep'})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = 'Telescope Buffers'})
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, {desc = 'Telescope Buffers'})
      --GIT
      vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Git Commits'})
      vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Git Status'})
      vim.keymap.set('n', '<leader>gt', builtin.git_stash, {desc = 'Git Stash'})
      vim.keymap.set('n', '<leader>gb', builtin.git_branches, {desc = 'Git branches'})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown{
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}

