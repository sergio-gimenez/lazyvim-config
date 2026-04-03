# LazyVim Configuration

Public LazyVim configuration with local override hooks for machine-specific settings.

## Setup

1. Clone the repo anywhere:
   ```bash
   git clone https://github.com/sergio-gimenez/lazyvim-config.git ~/mystuff/lazyvim-config
   ```

2. Point Neovim at it:
   ```bash
   ln -sfn ~/mystuff/lazyvim-config ~/.config/nvim
   ```

3. Launch Neovim:
   ```bash
   nvim
   ```

## Local Overrides

Keep machine-specific or private settings out of git.

- `lua/config/local.lua`
- `lua/plugins/local.lua`

Example templates are included:

- `lua/config/local.lua.example`
- `lua/plugins/local.lua.example`

## Notes

- Neovim `0.11.2+`
- Hidden files are shown by default in the Snacks explorer
- `blink.cmp` Copilot source is disabled unless its provider is installed
