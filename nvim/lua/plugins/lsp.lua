--lspconfig --
vim.lsp.enable({ "clangd", 'texlab'})
vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
		local opts = { buffer = ev.buf }
		--completion
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
		end
	end,
})
vim.opt.complete:append('o')
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.pumheight= 5
--vim.o.pumborder = 'rounded'
vim.api.nvim_set_hl(0, "Pmenu", {
	bg = "NONE",
})

vim.api.nvim_set_hl(0, "PmenuSel", {
	bg = "#504945", -- selected item
})

vim.api.nvim_set_hl(0, "PmenuBorder", {
	bg = "NONE",
})

vim.api.nvim_set_hl(0, "NormalFloat", {
	bg = "NONE",
})

vim.api.nvim_set_hl(0, "FloatBorder", {
	bg = "NONE",
})
