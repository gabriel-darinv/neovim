return { 
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    name = "dracula",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "dracula"
    end
  },
  {
    "catppuccin/nvim", 
    lazy = false,
    name = "catppuccin", 
    priority = 1000,
    config = function()
      --vim.cmd.colorscheme "catppuccin"
    end
  }
}
