-- Move on the same wrapped line
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- Move selected lines above/below
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

-- Move selected lines above/below
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- Avoid yanking when pasting over a line
vim.keymap.set('x', 'p', '"_dP')

-- /--------+
-- | TILING |
-- +--------/
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<M-h>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<M-j>', ':resize +2<CR>')
vim.keymap.set('n', '<M-k>', ':resize -2<CR>')
vim.keymap.set('n', '<M-l>', ':vertical resize +2<CR>')

vim.keymap.set('n', '<C-b>', ':bNext<CR>')

-- /-------+
-- | NETRW |
-- +-------/
vim.keymap.set('n', '<C-f>', ':Explore<CR>')
vim.keymap.set('n', '<C-s>', ':Sex<CR>')
vim.keymap.set('n', '<C-c>', ':Vex<CR>')

-- /----------+
-- | TERMINAL |
-- +----------/
vim.keymap.set('n', '<C-t>', ':split | terminal<CR>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- /----------+
-- | MAKEFILE |
-- +----------/
vim.keymap.set('n', 'mm', ':make<CR>')
vim.keymap.set('n', 'mr', ':make run<CR>')
vim.keymap.set('n', 'mc', ':make clean<CR>')

-- /------+
-- | MISC |
-- +------/
vim.keymap.set('n', 'Q', '<Nop')

-- /------------+
-- | COMPLETION |
-- +------------/
vim.keymap.set('i', '<C-n>', vim.lsp.completion.get) -- Press <C-n> to open completion

-- Press <Tab> to select completion
vim.keymap.set('i', '<Tab>', function()
    if vim.fn.pumvisible() == 1 then
        return '<C-y>'
    else
        return '<Tab>'
    end
end, { expr = true })

 -- Press <CR> to select completion
vim.keymap.set('i', '<CR>', function()
    if vim.fn.pumvisible() == 1 then
        return '<C-y>'
    else
        return '<CR>'
    end
end, { expr = true })
