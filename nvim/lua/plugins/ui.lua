return {
  { "pauchiner/pastelnight.nvim" },
  { "vague2k/vague.nvim" },
  { "ilof2/posterpole.nvim" },
  { "nyoom-engineering/oxocarbon.nvim"},
  {"ryanpcmcquen/true-monochrome_vim"},
  {"widatama/vim-phoenix"},
  {"kdheepak/monochrome.nvim"},
    {
      "sainnhe/gruvbox-material",
      priority = 1000,
      config = function()
        vim.g.gruvbox_material_background = "hard"  -- "medium" hoặc "soft"
        vim.g.gruvbox_material_palette = "original"
        vim.cmd("colorscheme gruvbox-material")
      end,
    },
  {
	"rose-pine/neovim",
	  name = "rose-pine",
	  priority = 1000,
	  config = function()
	    require("rose-pine").setup({
	      variant = "main",
	      dark_variant = "main",
	    })
	    vim.cmd("colorscheme rose-pine")

	    local hl = vim.api.nvim_set_hl
	    hl(0, "Normal", { bg = "#0b090a", fg = "#ffe5e0" })
	    hl(0, "Keyword", { fg = "#ff4444", bold = true })
	    hl(0, "Type", { fg = "#ff6644" })
	    hl(0, "Function", { fg = "#ff3333" })
	    hl(0, "String", { fg = "#ff9966" })
	    hl(0, "Identifier", { fg = "#ff4444" })
	  end,
  },

  -- 🌊 Các theme khác giữ lazy=true, không gọi colorscheme
  { "rebelot/kanagawa.nvim", lazy = true, config = function() require("kanagawa").setup({}) end },
  { "projekt0n/github-nvim-theme", lazy = true, config = function() require("github-theme").setup({}) end },
  { "shaunsingh/nord.nvim", lazy = true },
  { "shaunsingh/moonlight.nvim", lazy = true },
  { "q/K-DE-Cyberpunk-Neon", lazy = true },
}
