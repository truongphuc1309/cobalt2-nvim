local Config = require("cobalt2.config")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup()
  require("cobalt2.util").cache.clear()
end)

it("initializes defaults", function()
  assert.same("default", vim.g.colors_name)
  assert.same("dark", vim.o.background)
end)

it("loads the single cobalt2 colorscheme", function()
  vim.o.background = "light"
  vim.cmd.colorscheme("cobalt2")
  assert.same("dark", vim.o.background)
  assert.same("cobalt2", vim.g.colors_name)
end)

it("supports setup before loading", function()
  require("cobalt2").setup({ plugins = { all = false, auto = false } })
  vim.cmd.colorscheme("cobalt2")
  assert.same("cobalt2", vim.g.colors_name)
end)

it("loads statusline integrations", function()
  assert.is_table(require("lualine.themes.cobalt2"))
  assert.is_table(require("lightline.colorscheme.cobalt2"))
  assert.is_table(require("barbecue.theme.cobalt2"))
end)

it("uses the cobalt2 cache key", function()
  local cache = require("cobalt2.util").cache
  cache.write("cobalt2", { inputs = { theme = "cobalt2" }, groups = { Normal = { fg = "#ffffff" } } })
  local data = cache.read("cobalt2")

  assert.same("cobalt2", data.inputs.theme)
  assert.same("#ffffff", data.groups.Normal.fg)
  assert.is_true(cache.file("cobalt2"):find("cobalt2%-cobalt2%.json") ~= nil)
end)
