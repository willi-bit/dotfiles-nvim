-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("oil").setup({
  -- 1. Define your navigation keys
  keymaps = {
    ["h"] = "actions.parent",
    ["l"] = "actions.select",
    ["<CR>"] = "actions.select", -- Optional: keep Enter working too
  },
  -- 2. Configure the floating window appearance
  float = {
    padding = 2,
    max_width = 90,
    max_height = 0, -- 0 means it will use most of the screen height
    border = "rounded",
    win_options = {
      winblend = 0,
    },
  },
})

vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open floating oil" })

vim.opt.termguicolors = true

-- Equivalent to: set background=light
vim.opt.background = "dark"

-- Load the colorscheme
-- Note: Make sure the 'zenbones' plugin is installed in your plugins list!
vim.cmd([[colorscheme zenbones]])
