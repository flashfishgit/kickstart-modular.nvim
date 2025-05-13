return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = '<C-l>', -- Change to your preferred keybinding
          next = '<C-n>',
          prev = '<C-p>',
          dismiss = '<C-]>',
        },
      },
      panel = { enabled = false },
    }
  end,
}
