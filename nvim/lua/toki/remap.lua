require("true-zen.ataraxis")
require("true-zen.minimalist")
require("true-zen.narrow")
require("true-zen.focus")

-- rebinds --
vim.g.mapleader = " "
local ks = vim.keymap
local api = vim.api

-- writing 
api.nvim_set_keymap("n", "<leader>an", ":TZNarrow<CR>", {})
api.nvim_set_keymap("v", "<leader>an", ":'<,'>TZNarrow<CR>", {})
api.nvim_set_keymap("n", "<leader>af", ":TZFocus<CR>", {})
api.nvim_set_keymap("n", "<leader>am", ":TZMinimalist<CR>", {})
api.nvim_set_keymap("n", "<leader>aa", ":TZAtaraxis<CR>", {})
ks.set("n", "<leader>er", ":Twilight<CR>")

-- primeagen binds 
ks.set("i", "<C-c>", "<Esc>")
ks.set("v", "J", ":m '>+1<CR>gv=gv")
ks.set("v", "K", ":m '<-2<CR>gv=gv")
ks.set("n", "o", "o<esc>")
ks.set("n", "O", "O<esc>")
ks.set("n", "J", "mzJ`z")
ks.set("n", "<leader>pv", vim.cmd.Ex)

-- visual/replacement binds
ks.set("n", "<C-d>", "<C-d>zz")
ks.set("n", "<C-u>", "<C-u>zz")
ks.set("n", "n", "nzzzv")
ks.set("n", "N", "Nzzzv")
ks.set("n", "<C-k>", "<cmd>cnext<CR>zz")
ks.set("n", "<C-j>", "<cmd>cprev<CR>zz")
ks.set("n", "<leader>k", "<cmd>lnext<CR>zz")
ks.set("n", "<leader>j", "<cmd>lprev<CR>zz")
ks.set("n", "<leader>d", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
ks.set("x", "<leader>p", [["_dP]])

-- sets launch perms for file being written to
ks.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- custom binds
ks.set('n', '<leader>w', "<cmd>w<cr>")
ks.set('n', '<leader>s', "<cmd>so<cr>")
ks.set("n", "<leader>f", "<cmd>Neotree<cr>", { silent = true })
ks.set('n', 'j', 'gj')
ks.set('n', 'k', 'gk')

