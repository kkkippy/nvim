local builtin = require("telescope.builtin");

local opts = { noremap = true, silent = true };
local term_opts = { silent = true };

local keymap = vim.keymap.set;

-- Keys
--[[
C = Ctrl
A = Alt
]]--

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
keymap("n", "<Tab>l", ":bnext<CR>", opts);
keymap("n", "<Tab>h", ":bprevious<CR>", opts);

-- Close current tab
keymap("n", "<C-x>", ":bd<CR>", opts);

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts);
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts);

-- Open terminal
keymap("n", "<leader>t", ":terminal<CR>", opts);

-- Insert
-- keymap("i", "jk", "<ESC>", opts); -- Bem inútil na minha opinião

-- Nvim Tree
keymap("n", "<leader>e", function ()
	require("nvim-tree.api").tree.toggle({
		path = "./"
	})
end);

-- Telescope
keymap("n", "<leader>ff", builtin.find_files);
keymap("n", "<leader>fb", function ()
	require("telescope").extensions.file_browser.file_browser();
end)
