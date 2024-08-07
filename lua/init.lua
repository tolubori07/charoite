local M = {}
local theme = require('theme')
local hl = require('highlight')

function M.setup()
  vim.cmd("hi clear")
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.g.colors_name = "amethyst"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  hl.load(theme)
  vim.cmd('colorscheme charoite')
end

return M
