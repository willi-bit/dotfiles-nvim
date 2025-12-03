return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      keymaps = {
        ['<C-h>'] = false,
        ['<M-h>'] = 'actions.select_split',

        -- The Navigation Mappings
        ['h'] = 'actions.parent', -- 'h' goes up a directory
        ['l'] = 'actions.select', -- 'l' enters a directory
      },
      view_options = {
        show_hidden = true,
      },
    }

    -- Open parent directory with -
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
  end,
}
