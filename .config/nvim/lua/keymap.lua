-- Editing ==================================
vim.keymap.set({'n', 'v'}, 'j', 'gj')
vim.keymap.set({'n', 'v'}, 'k', 'gk')

-- vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- vim.keymap.set('n', '<C-d>', '<C-d>zz')

vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('x', 'p', '"_dP')

-- Tiling =============================================
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<M-h>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<M-j>', ':resize +2<CR>')
vim.keymap.set('n', '<M-k>', ':resize -2<CR>')
vim.keymap.set('n', '<M-l>', ':vertical resize +2<CR>')

vim.keymap.set('n', '<C-b>', ':bNext<CR>')

-- Netrw ===================================
vim.keymap.set('n', '<C-f>', ':Explore<CR>')
vim.keymap.set('n', '<C-s>', ':Sex<CR>')
vim.keymap.set('n', '<C-c>', ':Vex<CR>')

-- Terminal =========================================
vim.keymap.set('n', '<C-t>', ':split | terminal<CR>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Makefile ================================
vim.keymap.set('n', 'mm', ':make!<CR>')
vim.keymap.set('n', 'mr', ':make! run<CR>')
vim.keymap.set('n', 'mc', ':make! clean<CR>')

-- Misc =========================
vim.keymap.set('n', 'Q', '<Nop>')

-- Lsp =============================================
vim.keymap.set('i', '<C-n>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-n>'
  end
  vim.lsp.completion.get()
  return ''
end, { expr = true })                                   -- Press <C-n> to open completion
vim.keymap.set('n', 'gj', vim.diagnostic.open_float)    -- Show diagnostic dialog (must be called after setting 'j' to 'gj')
vim.keymap.set('n', 'gk', vim.lsp.buf.hover)            -- Show hover dialog (must be called after setting 'k' to 'gk')
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)       -- Go to definition
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)      -- Go to declaration
vim.keymap.set('n', 'gp', vim.diagnostic.goto_prev)     -- Go to prev diagnostic
vim.keymap.set('n', 'gn', vim.diagnostic.goto_next)     -- Go to next diagnostic
vim.keymap.set('n', 'ga', vim.lsp.buf.code_action)      -- Perform code action
vim.keymap.set('n', 'gu', vim.lsp.buf.references)       -- List usages
vim.keymap.set('n', 'gr', vim.lsp.buf.rename)           -- Rename symbol

-- -- TypstPreview ==============================
-- vim.keymap.set('n', 'mt', ':TypstPreview<CR>') -- List references (default)
--
-- -- MarkdownPreview ==============================
-- vim.keymap.set('n', 'ma', ':MarkdownPreview<CR>') -- List references (default)

-- Completion =========================
vim.keymap.set('i', '<Tab>', function()
    if vim.fn.pumvisible() == 1 then
        return '<C-y>'
    else
        return '<Tab>'
    end
end, { expr = true }) -- Press <Tab> to select completion

vim.keymap.set('i', '<CR>', function()
    if vim.fn.pumvisible() == 1 then
        return '<C-y>'
    else
        return '<CR>'
    end
end, { expr = true }) -- Press <CR> to select completion
