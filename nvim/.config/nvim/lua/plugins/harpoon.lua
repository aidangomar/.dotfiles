return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
    global_settings = {
      -- enable tabline with harpoon marks
      tabline = false,
      tabline_prefix = "   ",
      tabline_suffix = "   ",
    }
}
