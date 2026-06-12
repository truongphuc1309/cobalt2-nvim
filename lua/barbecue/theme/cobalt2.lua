local c = require("cobalt2.colors").setup()

local M = {
  normal = { bg = c.none, fg = c.fg_dark },

  ellipsis = { fg = c.dark5 },
  separator = { fg = c.dark5 },
  modified = { fg = c.warning },

  dirname = { fg = c.dark5 },
  basename = { fg = c.fg_dark, bold = true },
  context = { fg = c.fg_dark },

  context_file = { fg = c.fg_dark },
  context_module = { fg = c.yellow },
  context_namespace = { fg = c.yellow },
  context_package = { fg = c.yellow },
  context_class = { fg = c.purple, italic = true },
  context_method = { fg = c.yellow },
  context_property = { fg = c.blue1 },
  context_field = { fg = c.blue1 },
  context_constructor = { fg = c.yellow },
  context_enum = { fg = c.purple, italic = true },
  context_interface = { fg = c.purple, italic = true },
  context_function = { fg = c.yellow },
  context_variable = { fg = c.fg },
  context_constant = { fg = c.red },
  context_string = { fg = c.green },
  context_number = { fg = c.orange },
  context_boolean = { fg = c.orange },
  context_array = { fg = c.orange },
  context_object = { fg = c.orange },
  context_key = { fg = c.blue1 },
  context_null = { fg = c.blue1 },
  context_enum_member = { fg = c.red },
  context_struct = { fg = c.purple, italic = true },
  context_event = { fg = c.orange },
  context_operator = { fg = c.green1 },
  context_type_parameter = { fg = c.purple, italic = true },
}

return M
