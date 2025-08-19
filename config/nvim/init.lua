-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.fn.system({ "kitty", "@", "set-spacing", "padding=0" })
    vim.fn.system({ "kitty", "@", "set-colors", "background=#11111C" })
  end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    require("persistence").save()
    vim.fn.system({ "kitty", "@", "set-spacing", "padding=25" })
    vim.fn.system({ "kitty", "@", "set-colors", "--reset" })
  end,
})
