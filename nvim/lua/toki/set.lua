vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Getting LaTeX to work
--
vim.g['tex_flavor'] = 'latex'
vim.g['vimtex_compiler_latexmk_engines'] = {['_'] = '-xelatex'}
vim.g['vimtex_view_method'] = 'zathura'
vim.g['vimtex_view_general_viewer'] = 'okular'
vim.g['vimtex_view_genral_options'] = '--unique file:@pdf#src@line@tex'
vim.g['vimtex_view_automatic'] = 1

vim.cmd([[
        
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
]])

