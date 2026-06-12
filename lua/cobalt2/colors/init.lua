local Util = require("cobalt2.util")

local M = {}

---@class Palette
local palette = {
  bg = "#193549",
  bg_dark = "#15232d",
  bg_dark1 = "#122738",
  bg_highlight = "#1f4662",
  blue = "#0088ff",
  blue0 = "#0050a4",
  blue1 = "#9effff",
  blue2 = "#0088ff",
  blue5 = "#e1efff",
  blue6 = "#80fcff",
  blue7 = "#1f4662",
  comment = "#0088ff",
  cyan = "#9effff",
  dark3 = "#3b5364",
  dark5 = "#aaaaaa",
  fg = "#ffffff",
  fg_dark = "#e1efff",
  fg_gutter = "#aaaaaa",
  green = "#a5ff90",
  green1 = "#80ffbb",
  green2 = "#3ad900",
  magenta = "#fb94ff",
  magenta2 = "#ff0088",
  orange = "#ff9d00",
  purple = "#ff68b8",
  red = "#ff628c",
  red1 = "#f44542",
  teal = "#80ffbb",
  terminal_black = "#0050a4",
  yellow = "#ffc600",
  git = {
    add = "#3ad900",
    change = "#ffc600",
    delete = "#a22929",
  },
}

---@param opts? cobalt2.Config
function M.setup(opts)
  opts = require("cobalt2.config").extend(opts)

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.deepcopy(palette)

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green2, 0.25),
    delete = Util.blend_bg(colors.red1, 0.25),
    change = Util.blend_bg(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.git.ignore = colors.dark3
  colors.black = "#000000"
  colors.border_highlight = "#0d3a58"
  colors.border = "#0d3a58"

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = Util.blend_bg(colors.blue0, 0.65)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  colors.rainbow = {
    colors.blue,
    colors.yellow,
    colors.green,
    colors.teal,
    colors.magenta,
    colors.purple,
    colors.orange,
    colors.red,
  }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.black,
    black_bright   = colors.terminal_black,
    red            = colors.red,
    red_bright     = Util.brighten(colors.red),
    green          = colors.green,
    green_bright   = Util.brighten(colors.green),
    yellow         = colors.yellow,
    yellow_bright  = Util.brighten(colors.yellow),
    blue           = colors.blue,
    blue_bright    = Util.brighten(colors.blue),
    magenta        = colors.magenta,
    magenta_bright = Util.brighten(colors.magenta),
    cyan           = colors.cyan,
    cyan_bright    = Util.brighten(colors.cyan),
    white          = colors.fg_dark,
    white_bright   = colors.fg,
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
