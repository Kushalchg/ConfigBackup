require "nvchad.options"

-- add yours here!

vim.opt.relativenumber = true
-- local o = vim.o
vim.opt.linebreak = true
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "text", "markdown", "latex" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "en_us"
  end,
})

-- custom vim cmmand for markdown highlight
