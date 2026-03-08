# LazyVim Configuration

My personal LazyVim Neovim configuration.

## Setup

1. **Backup existing config** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. **Clone this repo**:
   ```bash
   git clone https://github.com/YOUR_USERNAME/lazyvim-config.git ~/.config/nvim
   ```

3. **Install Neovim** (if not installed):
   - [Neovim releases](https://github.com/neovim/neovim/releases) (v0.10+)
   - Or via package manager: `brew install neovim`, `sudo apt install neovim`, etc.

4. **Launch Neovim**:
   ```bash
   nvim
   ```
   - LazyVim will automatically install all plugins on first launch
   - Run `:Lazy` to see installation progress

## Requirements

- Neovim v0.10+
- Git
- A terminal with true color support
- A Nerd Font (for icons)

## Custom Plugins

- **nvim-tree.lua** - File tree
- **jupyter.lua** - Jupyter notebook support (Molten + Jupytext)
- **snacks.lua** - Extra utilities
- **wakatime.lua** - Time tracking

## Keymaps

See `lua/config/keymaps.lua` for custom keymaps. Default LazyVim keymaps are also available.

## Updating

```bash
:Lazy
```
Then press `U` to update all plugins.

## Troubleshooting

If you encounter issues:
1. Run `:Lazy` → `Checkhealth`
2. Delete `lazy-lock.json` and restart to reinstall all plugins
