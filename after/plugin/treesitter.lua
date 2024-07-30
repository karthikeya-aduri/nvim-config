require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "html", "css", "javascript", "typescript", "json",
      "c", "cpp", "cmake", "sql", "java", "python", "lua", "markdown", "vim", "vimdoc", "query"
  },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
