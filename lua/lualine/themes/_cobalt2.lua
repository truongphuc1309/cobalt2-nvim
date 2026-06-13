local M = {}

function M.get()
  local colors, config = require("cobalt2.colors").setup()

  local section_bg = colors.border
  local middle_bg = colors.bg_dark1

  local hl = {}

  hl.normal = {
    a = { bg = colors.yellow, fg = colors.black },
    b = { bg = section_bg, fg = colors.yellow },
    c = { bg = middle_bg, fg = colors.green2 },
  }

  hl.insert = {
    a = { bg = colors.green, fg = colors.black },
    b = { bg = section_bg, fg = colors.green },
    c = { bg = middle_bg, fg = colors.green2 },
  }

  hl.command = {
    a = { bg = colors.yellow, fg = colors.black },
    b = { bg = section_bg, fg = colors.yellow },
    c = { bg = middle_bg, fg = colors.green2 },
  }

  hl.visual = {
    a = { bg = colors.magenta, fg = colors.black },
    b = { bg = section_bg, fg = colors.magenta },
    c = { bg = middle_bg, fg = colors.green2 },
  }

  hl.replace = {
    a = { bg = colors.red, fg = colors.black },
    b = { bg = section_bg, fg = colors.red },
    c = { bg = middle_bg, fg = colors.green2 },
  }

  hl.terminal = {
    a = { bg = colors.green1, fg = colors.black },
    b = { bg = section_bg, fg = colors.green1 },
    c = { bg = middle_bg, fg = colors.green2 },
  }

  hl.inactive = {
    a = { bg = middle_bg, fg = colors.dark5 },
    b = { bg = middle_bg, fg = colors.dark5, gui = "bold" },
    c = { bg = middle_bg, fg = colors.dark5 },
  }

  if config.lualine_bold then
    for _, mode in pairs(hl) do
      mode.a.gui = "bold"
    end
  end
  return hl
end

return M
