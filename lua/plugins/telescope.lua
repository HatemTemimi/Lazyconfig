--if true then
 -- return { another configuration }
-- end
return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fg",
        function() require("telescope.builtin").live_grep({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Live grep",
      },

    },
    -- change some options
    --opts = {
    -- defaults = {
    --   layout_config = { prompt_position = "top" },
    --   layout_strategy = "horizontal",
    --   sorting_strategy = "ascending",
    --   winblend = 0,
    --},
    --},
  },
  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
