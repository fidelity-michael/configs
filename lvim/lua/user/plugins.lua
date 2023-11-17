lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "navarasu/onedark.nvim",
  },
  {
    "kylechui/nvim-surround",
  },
  {
    "sindrets/diffview.nvim",
  },
  {
    "Issafalcon/lsp-overloads.nvim",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "ahmedkhalf/lsp-rooter.nvim",
    event = "BufRead",
    config = function()
      require("lsp-rooter").setup()
    end,
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "catppuccin/nvim",
  },
  {
    "themaxmarchuk/tailwindcss-colors.nvim",
  }
}
