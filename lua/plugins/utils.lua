return {
  -- add symbols-outline
  {
    "simrat39/symbols-outline.nvim",
      cmd = "SymbolsOutline",
      keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
      config = true,
  },
  -- add jsonls and schemastore ans setup treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },

  -- Use <tab> for completion and snippets (supertab)
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
    build = "make install_jsregexp"
  },
}
