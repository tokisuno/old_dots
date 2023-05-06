-- rebinds --
vim.g.mapleader = " "
local ks = vim.keymap


ks.set("n", "<leader>pv", vim.cmd.Ex)
-- primeagen binds 
ks.set("i", "<C-c>", "<Esc>")
ks.set("v", "J", ":m '>+1<CR>gv=gv")
ks.set("v", "K", ":m '<-2<CR>gv=gv")
ks.set("n", "o", "o<esc>")
ks.set("n", "O", "O<esc>")
ks.set("n", "J", "mzJ`z")

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
ks.set('n', '<leader>ps', "<cmd>PackerSync<cr>")
ks.set('n', '<C-g>', '<cmd>Goyo<cr>')
ks.set('n', 'j', 'gj')
ks.set('n', 'k', 'gk')


vim.api.nvim_exec([[
    function! ToggleSpell(lang)
    if !exists("b:old_spelllang")
        let b:old_spelllang = &spelllang
        let b:old_spellfile = &spellfile
        let b:old_dictionary = &dictionary
        endif
    
        let l:newMode = ""
        if !&l:spell || a:lang != &l:spelllang
            setlocal spell
            let l:newMode = "spell"
            execute "setlocal spelllang=" . a:lang
            execute "setlocal spellfile=" . "~/.vim/spell/" . matchstr(a:lang, "[a-zA-Z][a-zA-Z]") . "." . &encoding . ".add"
            execute "setlocal dictionary=" . "~/.vim/spell/" . a:lang . "." . &encoding . ".dic"
            let l:newMode .= ", " . a:lang
        else
            setlocal nospell
            let l:newMode = "nospell"
            execute "setlocal spelllang=" . b:old_spelllang
            execute "setlocal spellfile=" . b:old_spellfile
            execute "setlocal dictionary=" . b:old_dictionary
            endif
            return l:newMode
            endfunction
]], false)

ks.set('n', '<F7>', '<call>ToggleSpell("en_ca")<CR>')
ks.set('n', '<F8>', '<call>ToggleSpell("en_cl")<CR>')
