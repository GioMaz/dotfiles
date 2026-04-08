-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.hl.on_yank({
            higroup = 'IncSearch',
            timeout = 700,
        })
    end,
})
