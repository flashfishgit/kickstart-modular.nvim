return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2', -- if you want to use Harpoon v2
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    -- Optional: Set keymaps
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end)
    vim.keymap.set('n', '<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    vim.keymap.set('n', '<leader>h', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<leader>j', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<leader>k', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<leader>l', function()
      harpoon:list():select(4)
    end)
  end,
}
