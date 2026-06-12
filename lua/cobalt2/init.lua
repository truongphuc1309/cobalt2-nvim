local config = require("cobalt2.config")

local M = {}

---@param opts? cobalt2.Config
function M.load(opts)
  opts = require("cobalt2.config").extend(opts)
  vim.o.background = "dark"
  return require("cobalt2.theme").setup(opts)
end

M.setup = config.setup

return M
