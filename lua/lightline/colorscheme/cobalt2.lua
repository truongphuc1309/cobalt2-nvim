local colors = require("cobalt2.colors").setup()

local cobalt2 = {}

cobalt2.normal = {
  left = { { colors.black, colors.yellow }, { colors.yellow, colors.fg_gutter } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.yellow }, { colors.yellow, colors.fg_gutter } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

cobalt2.insert = {
  left = { { colors.black, colors.green }, { colors.yellow, colors.bg } },
}

cobalt2.visual = {
  left = { { colors.black, colors.magenta }, { colors.yellow, colors.bg } },
}

cobalt2.replace = {
  left = { { colors.black, colors.red }, { colors.yellow, colors.bg } },
}

cobalt2.inactive = {
  left = { { colors.yellow, colors.bg_statusline }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
}

cobalt2.tabline = {
  left = { { colors.dark3, colors.bg_highlight }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
  tabsel = { { colors.yellow, colors.fg_gutter }, { colors.dark3, colors.bg } },
}

return cobalt2
