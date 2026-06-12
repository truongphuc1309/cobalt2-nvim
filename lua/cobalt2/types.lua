---@class cobalt2.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias cobalt2.Highlights table<string,cobalt2.Highlight|string>

---@alias cobalt2.HighlightsFn fun(colors: ColorScheme, opts:cobalt2.Config):cobalt2.Highlights

---@class cobalt2.Cache
---@field groups cobalt2.Highlights
---@field inputs table
