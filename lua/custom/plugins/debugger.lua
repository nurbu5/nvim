return {
  { 'mfussenegger/nvim-dap' },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
      -- Go setup (make sure to install delve)
      'leoluz/nvim-dap-go'
    },
    config = function()
      require('dapui').setup()

      local dap, dapui = require('dap'), require('dapui')

      vim.keymap.set('n', '<Leader>db', dap.toggle_breakpoint, { desc = '[D]ebugger toggle [B]reakpoint' })
      vim.keymap.set('n', '<Leader>dc', dap.continue, { desc = '[D]ebugger [C]ontinue' })
      vim.keymap.set('n', '<Leader>dn', dap.step_over, { desc = '[D]ebugger [N]ext line' })
      vim.keymap.set('n', '<Leader>di', dap.step_into, { desc = '[D]ebugger step [I]nto function' })
      vim.keymap.set('n', '<Leader>do', dap.step_into, { desc = '[D]ebugger step [O]ut of function' })

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      -- Go setup
      require('dap-go').setup()
    end
  }
}
