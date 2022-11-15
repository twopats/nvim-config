require('plugins')
require('settings')
require('maps')
require('twopats-lsp')
require('twopats-treesitter')
require('mason-config')
require("interface")

--misc set ups
vim.cmd('colorscheme gruvbox')
require('nvim_comment').setup()
