return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require('rose-pine').setup {
      disable_background = true, -- This is the built-in option
      styles = {
        italic = false,
      },
    }

    -- Explicitly force transparent background just to be safe
    -- (This mimics Primeagen's manual override)
    vim.cmd 'colorscheme rose-pine'
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  end,
}
