require('plugins')
require('settings')
require('maps')
require('twopats-treesitter')
require('mason-config')
require("interface")

--misc set ups
vim.cmd('colorscheme gruvbox')
require('nvim_comment').setup()
require("prettier-config")
require("lsp-config.null-ls")
require("lsp-config.completion")
require("lsp-config.lang-servers")
