-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.keymap.set('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>', { desc = 'To [f]ormat file' })

local function format_buffer()
  local opts = {
    timeout_ms = 1000,
  }
  vim.lsp.buf.format(opts)
end

vim.api.nvim_create_user_command('Fmt', format_buffer, {})

return {}
