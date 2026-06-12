local M = {}

M.url = "https://github.com/echasnovski/mini.operators"

---@type cobalt2.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniOperatorsExchangeFrom = "IncSearch",
  }
end

return M
