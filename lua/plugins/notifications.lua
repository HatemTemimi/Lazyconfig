return {
  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>dn",
        function()
          require("notify").dismiss({ silent = true, pending = true })
        end,
        desc = "Delete all Notifications",
      },
    },
    opts = {
      render = "compact",
      timeout = 2000,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.30)
      end,
      level = 4,
      top_down = false,
    },
    init = function()
      -- when noice is not enabled, install notify on VeryLazy
      local Util = require("lazyvim.util")
      if not Util.has("noice.nvim") then
        vim.notify = require("notify")
        Util.on_very_lazy(function() end)
      end
    end,
  },
}
