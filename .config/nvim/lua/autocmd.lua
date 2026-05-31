-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.hl.hl_op({
            higroup = 'IncSearch',
            timeout = 700,
        })
    end,
})
