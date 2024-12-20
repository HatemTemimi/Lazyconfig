# Neolazy: Extra lazy config for Neovim // Neovide
Neolazy is based on lazy.nvim, a robust base configuration for neovim by folke written in Lua.
### In the Box:
<ul>
<li> Lazy package manager </li>
<li> LSP && autocomplete ready </li>
<li> Kanagawa and default lazy themes </li>
<li> Fuzzy search with telescope </li>
<li> Treesitter Parser </li>
<li> Integrated terminal ToggleTerm </li>
</ul>

## Installation
### Requirements: Git
#### 1) Pre-Install
``` bash
# required  
# backup old config
mv ~/.config/nvim{,.bak}  
  
# optional but recommended  
mv ~/.local/share/nvim{,.bak}  
mv ~/.local/state/nvim{,.bak}  
mv ~/.cache/nvim{,.bak}
 ```
 #### 2) Clone && Start
 ``` bash
 git clone https://github.com/HatemTemimi/Neolazy.nvim ~/.config/nvim
 nvim
  ```
#### 3) Install Dependencies
after running the config, you first have to install the packages which are managed by lazy
 ``` bash
 :Lazy sync
  ```
 
## Customising your configuration
Neolazy's config is easy, you will only deal with a file per topic, which are three: keymaps, commands and plugins, we will go through each topic seperatly so you get to know the files concerned for each one:
#### Plugins
##### Config Files
```c
~/.config/nvim/lua/init.lua
``` 
the root of the project, bootstraps the config 

```c 
~/.config/nvim/lua/config/lazy.lua
``` 
base lazy.nvim config is contained here, you can remove base lazy plugins from here 


``` c
~/.config/nvim/lua/plugins/index.lua
``` 
this is your playground where you can add your own plugins and alter the behavior of present plugins

#### Commands
##### Config File
```c
~/.config/nvim/lua/config/autocmds.lua
```

this file handles commands that are executed when neovim is just launched.
##### Current example on project
```c
vim.cmd("colorscheme kanagawa") --> this line sets your current theme to kanagawa
vim.cmd("set relativenumber") --> This line activates the relative line numbers in the buffer. Relative line numbers show the relative line distances between the current line and other lines in the file.
vim.cmd("set number") --> This line activates absolute line numbers in the buffer. 
Absolute line numbers show the actual line numbers of each line in the file.
```
You can of course add your own commands.
#### Keymaps
##### Config File
``` c
~/.config/nvim/lua/config/keymaps.lua
```
this file handles your remaps config
##### Current example on project
 ``` c
//leader config
 vim.g.mapleader = " "
vim.g.maplocalleader = " "

allows you to copy and paste from outside
vim.keymap.set({ "n", "v" }, "<C-x>", [["+x]])
vim.keymap.set({ "n", "v" }, "<C-y>", [["+y]])
vim.keymap.set({ "n", "i" }, "<C-p>", [["+gP]])
 ```
