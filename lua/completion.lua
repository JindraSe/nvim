local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
  },

  window = {},
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),

    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,

    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'LuaSnip' }
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['clangd'].setup({capabilities = capabilities})
require('lspconfig')['rust_analyzer'].setup({capabilities = capabilities})
require('lspconfig')['lua_ls'].setup({capabilities = capabilities})
require('lspconfig')['pylsp'].setup({capabilities = capabilities})
require'lspconfig'.cmake.setup{}
