--if true then
 -- return { another configuration }
-- end
return {
    -- change some telescope options and a keymap to browse plugin files
    {
      "nvim-telescope/telescope.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim"
      },
      keys = {
        -- add a keymap to browse plugin files
        -- stylua: ignore
        {
          "<leader>ff",
          function() require("telescope.builtin").find_files() end,
          desc = "Find Plugin File",
        },
        {
          "<leader>fg",
          function() require("telescope.builtin").live_grep() end,
          desc = "Live grep",
        },
      },
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
