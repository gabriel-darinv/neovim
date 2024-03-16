return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",       
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim",    
  },
  config = function()
    require("neo-tree").setup({  
      default_component_configs = {
        close_if_last_window = false,
        popup_border_style = "rounded",
        window = {
          position = "left",
          width = 30,
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "◇",
        },
        git_status = {
          symbols = {
            -- Change type
            added     = "A", -- "⁅+⁆", -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified  = "", -- "M", -- or "", but this is redundant info if you use git_status_colors on the name
            deleted   = "D", -- "×",-- this can only be used in the git_status source
            renamed   = "R", -- "R",-- this can only be used in the git_status source
            -- Status type
            untracked = "U", -- 
            ignored   = "i", -- "",-- 
            unstaged  = "◯", -- µ⨆⨆∪⊔⊠⋄⋐⋱⋃↖↗↘↙→●◉◯◶ÚŮUi$₿£i⋮⋯⋱⊠⁅⁆*‼‽:§↥←◌₀∙∵∹≬⋆≈∷∸∘₀⁰√
            staged    = "◉",
            conflict  = "!",
          }
        },
      }
    })

    vim.keymap.set('n','<leader>e',':Neotree toggle<CR>')
    vim.keymap.set('i','<C-e>','<ESC>:Neotree filesystem reveal left<CR>')
    --vim.keymap.set('n','<leader><leader>',':Neotree filesystem reveal float<CR>')
  end
}
