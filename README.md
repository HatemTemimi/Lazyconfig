
## The Highlife philosopĥy
A luxurious highlife fullstack developement configuration for Neovim.
Sane developers who have a life, usually opt out of intensive configuration and want out of the box toys to play with.
Note: This is my personal configuration based on other neovim configurations, you can use it as a template and extend it, or just use it as it is.

## In The Box
### Theme

<img src="./snapshots/snapshot3.jpg"  width="80%" height="80%">
<img src="./snapshots/snapshot2.png"  width="80%" height="80%">

### And some other stuff
<ul>
<li>LSP: Neovim LSP</li>
<li>Formatter: Null-ls</li>
<li>Autocomplete: CMP</li>
<li>File Browser: Neotree</li>
<li>Syntax Highlight: Treesitter</li>
<li>Diagnostics: Trouble</li>
<li>Notifications: Notify</li>
<li>Package Manager: Mason</li>
<li>Popup Terminal: ToggleTerm</li>
<li>Highlife Dashboard: Alpha</li>
<li>Commandline: Noice</li>
<li>Version Control: Gitsigns</li>
<li>Fuzzy Search: Telescope</li>
</ul>

The whole config is written in lua script, You can extend the configuration by adding files to the plugins folder or editing existing configuration files.
Backup previous configuration then Copy configuration files to $HOME/.config/nvim


## ⚙ Setup
### Requirements: Git 🔑

Backup your old configuration
```bash
     cp -r $HOME/.config/nvim/ $HOME/.config/nvim.bak/
 ```

Clone the repository locally
```bash
    git clone  git@github.com:HatemTemimi/highlife.nvim.git $HOME/config/nvim/ 
```

## Snapshots
<img src="./snapshots/snapshot1.png"  width="80%" height="80%">:


## Important Credits

Based on LazyVim(https://github.com/LazyVim/LazyVim).

Kanagawa Theme(https://github.com/rebelot/kanagawa.nvim).
