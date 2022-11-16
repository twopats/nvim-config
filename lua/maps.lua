-- Import & assign the map() function from the utils module
local map = require("utils-map").map
--shorten keymap
local keymap = vim.api.nvim_set_keymap

local opts = {noremap= true, silent = true}

local function nmap(key,map)
	keymap('n', key, map, {})
end

local function imap(key,map)
	keymap('i', key, map, {})
end



--use space key as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--saving
nmap('<c-s>', ':w<CR>')
imap('<c-s>', '<Esc>:w<CR>a')


--commenting
keymap("n", "<gcc>", ":CommentToggle", opts)

-- Navigate buffers
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)

--lsp
nmap('gd', ':lua vim.lsp.buf.definition()<cr>')
nmap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nmap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nmap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nmap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nmap('gr', ':lua vim.lsp.buf.references()<cr>')
nmap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nmap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nmap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nmap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
nmap('<leader>p', ':lua vim.lsp.buf.format({async = true})<cr>')
nmap('K', ':lua vim.lsp.buf.hover()<cr>')
nmap('<c-w>', ':bd<cr>')


nmap('<leader>tt', ':NvimTreeOpen<cr>')

keymap("n", "<C-p>", ":FZF<CR>", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)
