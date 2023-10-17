vim.cmd("let g:OmniSharp_server_use_net6 = 1")
vim.cmd("let g:OmniSharp_server_use_mono = 1")

require "paq" {
  "jiangmiao/auto-pairs",

  -- themes
  "Shatur/neovim-ayu",
  "wuelnerdotexe/vim-enfocado",
  "mhartington/oceanic-next",
  "EdenEast/nightfox.nvim",

  -- nice-to-haves
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "akinsho/toggleterm.nvim",
  "terrortylor/nvim-comment",

  -- lsp, completion and debugging
  -- "neoclide/coc.nvim",
  --"dense-analysis/ale",
  --"mfussenegger/nvim-dap",
  --"rcarriga/nvim-dap-ui",
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "hrsh7th/cmp-nvim-lsp", -- why do i need like 8 plugins for completion pls
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",

  -- languages
  --"OmniSharp/omnisharp-vim",
  --"adelarsq/neofsharp.vim",

  -- web development
  --"tyru/open-browser.vim",
  --"aklt/plantuml-syntax",
  --"weirongxu/plantuml-previewer.vim",
  --"manzeloth/live-server",
  --"prisma/vim-prisma",

  -- wiki
  --"vimwiki/vimwiki",
  --"itchyny/calendar.vim"
  --"mattn/calendar-vim"
}

require("nvim-tree").setup()
require("lualine").setup({
  options = {
    disabled_filetypes = { 'NvimTree' }
  }
})
require("toggleterm").setup()
require("nvim_comment").setup()
require("mason").setup()
require("mason-lspconfig").setup()
