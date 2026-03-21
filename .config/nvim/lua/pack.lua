vim.pack.add({
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/chomosuke/typst-preview.nvim',
    -- { src = 'https://github.com/whonore/Coqtail' },
    -- { src = 'https://github.com/github/copilot.vim' },
})

require('typst-preview').setup({
    dependencies_bin = {
        ['tinymist'] = 'tinymist'
    }
})
