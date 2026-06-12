# Contributing to Cobalt2.nvim

Thanks for helping improve Cobalt2.nvim.

## Development

- Main theme code lives in `lua/cobalt2`.
- Plugin highlight modules live in `lua/cobalt2/groups`.
- The only colorscheme entrypoint is `colors/cobalt2.lua`.
- This repo intentionally has one dark theme; do not add style variants.
- Generated extras from TokyoNight are not part of this fork.

Run tests before submitting changes:

```sh
nvim -l tests/minit.lua --minitest
```

## Adding Plugin Highlights

1. Add a module in `lua/cobalt2/groups/<plugin>.lua`.
2. Export `M.url` with the plugin source URL.
3. Implement `M.get(colors, opts)` and return highlight groups.
4. Register the plugin in `lua/cobalt2/groups/init.lua`.
5. Keep colors within the Cobalt2 palette unless a plugin needs a specific semantic accent.

## Palette Guidance

The palette should stay faithful to Wes Bos' Cobalt2 VS Code theme:

- Background: `#193549`
- Dark UI surfaces: `#15232d`, `#122738`
- Main foreground: `#ffffff`
- Yellow accent/functions/entities: `#ffc600`
- Orange keywords/storage: `#ff9d00`
- Blue comments/UI accent: `#0088ff`
- Cyan properties/tags: `#9effff`
- Green strings: `#a5ff90`
- Pink/red constants/errors: `#ff628c`, `#f44542`
