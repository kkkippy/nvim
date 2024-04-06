local builtin = require("telescope.builtin");

local opts = { noremap = true, silent = true };
local term_opts = { silent = true };

local keymap = vim.keymap.set;

-- Modes
--[[
normal_mode = "n"
insert_mode = "i"
visual_mode = "v"
visual_block_mode = "x"
term_mode = "t"
command_mode = "c"
]]--

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts);
keymap("n", "<C-j>", "<C-w>j", opts);
keymap("n", "<C-k>", "<C-w>k", opts);
keymap("n", "<C-l>", "<C-w>l", opts);

-- Resize window with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts);
keymap("n", "<C-Down>", ":resize +2<CR>", opts);
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts);
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts);

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts);
keymap("n", "<S-h>", ":bprevious<CR>", opts);

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts);
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts);

-- Insert
-- keymap("i", "jk", "<ESC>", opts); -- Bem inútil na minha opinião

-- Telescope
keymap("n", "<leader>ff", builtin.find_files, {});
