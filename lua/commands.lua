vim.api.nvim_create_user_command('CmakeConfig',
  function()
    vim.cmd('!cmake -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON')
    vim.cmd('LspRestart')
  end,
  {}
)

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

