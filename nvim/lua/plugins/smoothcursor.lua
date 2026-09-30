return {
  "gen740/SmoothCursor.nvim",
  event = "VeryLazy",
  config = function()
    require("smoothcursor").setup({
      type = "default",
      fancy = {
        enable = true,
        head = { cursor = "▷", texthl = "SmoothCursorHead", linehl = nil },
        body = {
          { cursor = "▷", texthl = "SmoothCursorBody1" },
          { cursor = "▷", texthl = "SmoothCursorBody2" },
          { cursor = "▷", texthl = "SmoothCursorBody3" },
        },
        tail = { cursor = nil, texthl = "SmoothCursorBody3" },
      },
      speed = 25,
      intervals = 35,
    })

    vim.api.nvim_set_hl(0, "SmoothCursorHead", { fg = "#FFFFFF", bold = true })
    vim.api.nvim_set_hl(0, "SmoothCursorBody1", { fg = "#CCCCCC" })
    vim.api.nvim_set_hl(0, "SmoothCursorBody2", { fg = "#888888" })
    vim.api.nvim_set_hl(0, "SmoothCursorBody3", { fg = "#444444" })
  end,
}
