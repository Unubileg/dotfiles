return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"jayp0521/mason-null-ls.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local ruff = require("none-ls.diagnostics.ruff")
		local ruff_format = require("none-ls.formatting.ruff_format")

		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics

		require("mason-null-ls").setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"eslint_d",
				"shfmt",
				"checkmake",
				"ruff",
			},
			automatic_installation = true,
		})

		local sources = {
			diagnostics.checkmake,
			formatting.prettier.with({
				filetypes = { "html", "json", "yaml", "markdown" },
				extra_args = { "--single-quote" }, -- This will force single quotes in supported files
			}),
			formatting.stylua.with({
				extra_args = {
					"--quote-style",
					"single", -- This will force single quotes in Lua files
				},
			}),
			formatting.shfmt.with({ args = { "-i", "4" } }),
			formatting.terraform_fmt,
			ruff.with({
				extra_args = { "--extend-select", "I", "--quote-style", "single" }, -- This adds single quote formatting for Python
			}),
			ruff_format,
		}

		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		null_ls.setup({
			sources = sources,
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
		})
	end,
}
