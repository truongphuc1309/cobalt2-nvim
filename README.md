# Cobalt2.nvim

A single dark Neovim theme based on Wes Bos' Cobalt2 colors and the highlight
coverage from TokyoNight.nvim.

## Features

- One colorscheme: `cobalt2`
- Faithful Cobalt2 palette from `wesbos/cobalt2-vscode`
- Terminal colors
- Treesitter, LSP semantic token, diagnostic, and major plugin highlights
- Lualine, Lightline, and barbecue themes

## Installation

With lazy.nvim:

```lua
{
  "yourname/cobalt2-nvim",
  name = "cobalt2",
  priority = 1000,
  opts = {},
}
```

Then load it:

```lua
vim.cmd.colorscheme("cobalt2")
```

Vimscript:

```vim
colorscheme cobalt2
```

## Integrations

Lualine:

```lua
require("lualine").setup({
  options = {
    theme = "cobalt2",
  },
})
```

Lightline:

```vim
let g:lightline = {'colorscheme': 'cobalt2'}
```

barbecue.nvim:

```lua
require("barbecue").setup({
  theme = "cobalt2",
})
```

## Configuration

Configure before loading the colorscheme:

```lua
require("cobalt2").setup({
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "dark",
  },
  dim_inactive = false,
  lualine_bold = false,
  cache = true,
  plugins = {
    all = package.loaded.lazy == nil,
    auto = true,
  },
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
})
```

## Customization

Override palette values:

```lua
require("cobalt2").setup({
  on_colors = function(colors)
    colors.bg = "#193549"
  end,
})
```

Override highlight groups:

```lua
require("cobalt2").setup({
  on_highlights = function(hl, colors)
    hl.CursorLineNr = { fg = colors.yellow, bold = true }
  end,
})
```

## Development

Run the test suite:

```sh
nvim -l tests/minit.lua --minitest
```

Plugin highlight groups live in `lua/cobalt2/groups`.

## Credits

- Palette source: https://github.com/wesbos/cobalt2-vscode
- Theme architecture and highlight coverage forked from:
  https://github.com/folke/tokyonight.nvim
