-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local null_ls = require("null-ls")

local sources = {
	null_ls.builtins.formatting.prettier, -- https://github.com/prettier/prettier
	null_ls.builtins.formatting.black, -- python
	null_ls.builtins.formatting.clang_format.with({
		extra_args = { "-style", "{IndentWidth: 4}" },
	}), -- c/c++/cs/java
	null_ls.builtins.formatting.stylua, -- lua
	null_ls.builtins.formatting.rustfmt, -- rust
}

null_ls.setup({ sources = sources })
