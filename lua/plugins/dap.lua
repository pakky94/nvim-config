return {
  'mfussenegger/nvim-dap',
  tag = '0.7.0',
  dependencies = {
    {
      'rcarriga/nvim-dap-ui',
      tag = 'v3.9.1',
    },
    'theHamsta/nvim-dap-virtual-text',
  },
  config = function ()
    require('telescope').load_extension('dap')
    vim.keymap.set('n', '<F5>', require 'dap'.continue)
    vim.keymap.set('n', '<F1>', require 'dap'.step_into)
    vim.keymap.set('n', '<F2>', require 'dap'.step_over)
    vim.keymap.set('n', '<F3>', require 'dap'.step_out)
    vim.keymap.set('n', '<leader>db', require 'dap'.toggle_breakpoint, { desc = '[B]reakpoint' })
    vim.keymap.set('n', '<leader>dB', function()
      require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
    end, { desc = '[B]reakpoint conditional' })
    vim.keymap.set('n', '<leader>dr', require 'dap'.repl.open, { desc = '[R]epl' })
  end
}
