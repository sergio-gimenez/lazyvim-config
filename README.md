# LazyVim Configuration

My personal LazyVim Neovim configuration.

## Setup

1. **Backup existing config** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. **Clone this repo**:
   ```bash
   git clone https://github.com/sergio-gimenez/lazyvim-config.git ~/.config/nvim
   ```

3. **Install Neovim** (required: v0.11.2+):
   ```bash
   # Download and install Neovim v0.11.2+
   curl -LO https://github.com/neovim/neovim/releases/download/v0.11.2/nvim-linux-x86_64.tar.gz
   tar xzf nvim-linux-x86_64.tar.gz
   sudo mv nvim-linux-x86_64 /opt/nvim
   sudo ln -sf /opt/nvim/bin/nvim /usr/local/bin/nvim
   ```

   Or via package manager: `brew install neovim`, `sudo apt install neovim`, etc. (but may be outdated)

4. **Launch Neovim**:
   ```bash
   nvim
   ```
   - LazyVim will automatically install all plugins on first launch
   - Run `:Lazy` to see installation progress

## Requirements

- Neovim v0.11.2+ (required by LazyVim)
- Git
- A terminal with true color support
- A Nerd Font (for icons)

### Optional (for Jupyter image support)

- lua & luarocks (for `image.nvim` - currently disabled by default)

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
