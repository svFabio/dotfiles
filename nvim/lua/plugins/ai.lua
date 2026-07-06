return {
  
  {
    "McEazy2700/antigravity-cli.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/snacks.nvim",
    },
    opts = {
      command = "antigravity-cli",
    },
    keys = {
      { "<leader>ac", "<cmd>Antigravity<cr>", desc = "Toggle Antigravity" },
      { "<leader>aa", "<cmd>AntigravityAsk<cr>", desc = "Ask Antigravity", mode = { "n", "v" } },
      { "<leader>ay", "<cmd>AntigravityDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>an", "<cmd>AntigravityDiffDeny<cr>", desc = "Deny diff" },
    },
  },
  {
  
    "Exafunction/windsurf.vim",
    event = "BufEnter",
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    build = "make",
    opts = {
      provider = "gemini",
      gemini = {
        api_key = "TU_API_KEY_AQUI",
        model = "gemini-2.0-flash",
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  },
}
