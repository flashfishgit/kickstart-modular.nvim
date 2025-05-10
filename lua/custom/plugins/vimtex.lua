return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'zathura'

    -- Set localleader if not already set
    vim.g.maplocalleader = 'm'

    -- Shortcuts for VimTeX commands
    vim.keymap.set('n', '<localleader>ll', '<cmd>VimtexCompile<CR>', { desc = 'Compile LaTeX', silent = true })
    vim.keymap.set('n', '<localleader>lq', '<cmd>VimtexStop<CR>', { desc = 'Stop compilation', silent = true })
    vim.keymap.set('n', '<localleader>lc', '<cmd>VimtexClean<CR>', { desc = 'Clean aux files', silent = true })
    vim.keymap.set('n', '<localleader>lv', '<cmd>VimtexView<CR>', { desc = 'View PDF', silent = true })
  end,
}
