local vim = vim
local Plug = vim.fn["plug#"]

vim.call "plug#begin"

Plug "nvim-tree/nvim-web-devicons"
Plug "nvim-tree/nvim-tree.lua"

Plug "vim-airline/vim-airline"
Plug "vim-airline/vim-airline-themes"

vim.call "plug#end"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "autoload"

