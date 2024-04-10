local cmp = require "cmp"

cmp.setup({
	snippet = {
		expand = function (args)
			vim.fn["vsnip#anonymous"](args.body)
			-- For vsnip users ☝
		end
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},

	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true })
		-- Accept currently selected item
	}),

	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' }, -- For vsnip users
	}, {
		{ name = 'buffer' },
	})
})

cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
		{ name = 'git' },
	},
	{
		{ name = 'buffer' },
	})
})

cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

-- Setup LSP config
local capabilities = require("cmp_nvim_lsp").default_capabilities();

local lsp = require("lspconfig");

function load (l, opts)
	if not opts then opts = {} end

	opts.capabilities = capabilities;
	lsp[l].setup(opts);
end

load("clangd");
load("lua_ls");
load("tsserver");
load("csharp_ls");
