return {
  -- Jump quickly between often used files.
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  lazy = true,
  event = 'BufEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Append Buffer to Harppon' })

    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(1)
    end, { desc = 'Jump to first buffer' })
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(2)
    end, { desc = 'Jump to second buffer' })
    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(3)
    end, { desc = 'Jump to third buffer' })
    vim.keymap.set('n', '<C-;>', function()
      harpoon:list():select(4)
    end, { desc = 'Jump to fourth buffer' })
    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end, { desc = 'Toggle prev Buffer' })
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():next()
    end, { desc = 'Toggle next Buffer' })
    -- Integrate Harpoon with Telescope
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle Harpoon Quick menu' })
  end,
}
