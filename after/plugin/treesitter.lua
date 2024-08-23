require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"python",
		"c",
		"cpp",
		"html",
		"css",
		"javascript",
		"markdown",
		"json",
		"sql",
		"gitcommit",
		"gitignore",
		"cmake",
		"vim",
		"vimdoc",
		"query",
	},
	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
