local M = {}

function M.highlight(group, styles)
  GLOBAL_GROUP = 0
  vim.api.nvim_set_hl(GLOBAL_GROUP, group, styles)
end

function M.syntax(syntax)
  for group, colors in pairs(syntax) do
    M.highlight(group, colors)
  end
end

function M.load(theme)
  M.syntax(theme.highlights)
end

return M
