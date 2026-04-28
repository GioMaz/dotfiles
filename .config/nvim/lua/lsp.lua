vim.lsp.enable({
    'clangd',
    'rust_analyzer',
    'ty',
    'gleam',
    'ocamllsp',
    'texlab',
    -- 'tinymist',
    'ts_ls',
    -- 'dolmenls',
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end,
})

vim.lsp.config('texlab', {
    settings = {
        texlab = {
            build = {
                onSave = true
            }
        }
    }
})
