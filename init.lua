local vim = vim;

local Plug = vim.fn["plug#"];

vim.call "plug#begin"

Plug "folke/neodev.nvim"

Plug "nvim-treesitter/nvim-treesitter"

Plug "ryanoasis/vim-devicons"

Plug "nvim-lua/plenary.nvim"
Plug "nvim-telescope/telescope.nvim"
Plug "nvim-telescope/telescope-file-browser.nvim"

Plug "aktersnurra/no-clown-fiesta.nvim"

Plug "neovim/nvim-lspconfig"
Plug "hrsh7th/cmp-nvim-lsp"
Plug "hrsh7th/cmp-buffer"
Plug "hrsh7th/cmp-path"
Plug "hrsh7th/cmp-cmdline"
Plug "hrsh7th/nvim-cmp"

-- For vsnip users
Plug "hrsh7th/cmp-vsnip"
Plug "hrsh7th/vim-vsnip"

Plug "nvim-tree/nvim-web-devicons"
Plug "nvim-tree/nvim-tree.lua"

Plug "vim-airline/vim-airline"
Plug "vim-airline/vim-airline-themes"

vim.call "plug#end"

require "autoload"
