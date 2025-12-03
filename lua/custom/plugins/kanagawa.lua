return {
  'rebelot/kanagawa.nvim',
  config = function()
    require('kanagawa').setup {
      theme = 'wave', -- or "dragon" for even darker
      transparent = true, -- This only removes main background

      -- CRITICAL: Override UI elements to be transparent
      overrides = function(colors)
        local theme = colors.theme
        return {
          -- Make all floating windows transparent
          NormalFloat = { bg = 'none' },
          FloatBorder = { bg = 'none' },
          FloatTitle = { bg = 'none' },

          -- Make sidebars transparent
          Pmenu = { bg = 'none' },
          PmenuSel = { bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = 'none' },
          PmenuThumb = { bg = theme.ui.bg_p2 },

          -- Make gutter/line numbers transparent
          LineNr = { bg = 'none' },
          CursorLineNr = { bg = 'none' },
          SignColumn = { bg = 'none' },
          FoldColumn = { bg = 'none' },

          -- Make statusline transparent (if you weren't using mini.statusline)
          StatusLine = { bg = 'none' },
          StatusLineNC = { bg = 'none' },

          -- Make telescope and other plugin windows transparent
          TelescopeNormal = { bg = 'none' },
          TelescopeBorder = { bg = 'none' },
          TelescopeTitle = { bg = 'none' },
        }
      end,
    }

    vim.cmd 'colorscheme kanagawa'
  end,
}
