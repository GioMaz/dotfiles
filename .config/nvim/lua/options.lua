vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.signcolumn = "yes"
-- vim.opt.errorbells = false
vim.opt.wrap = false
vim.opt.linebreak = true
-- vim.opt.wildmenu = true
-- vim.opt.exrc = true
-- vim.opt.backspace = { 'start', 'eol', 'indent' }

-- /--------+
-- | SEARCH |
-- +--------/
vim.opt.hlsearch    = false -- Clear highlight after search
vim.opt.incsearch   = true  -- Incremental search (default on)
vim.opt.ignorecase  = true  -- Case insensitive search
vim.opt.smartcase   = true  -- Case sensitive search only if uppercase characters are used

-- /-------------+
-- | INDENTATION |
-- +-------------/
vim.opt.softtabstop = 4     -- Pressing <Tab> inserts 4 columns
vim.opt.tabstop     = 4     -- Set "\t" size to 4 columns
vim.opt.shiftwidth  = 4     -- >> and << indent by 4 columns
vim.opt.expandtab   = true  -- Use "    " instead of "\t"
vim.opt.autoindent  = true  -- Keep indentation after "\n" (default on)

-- vim.opt.ruler = true
-- vim.opt.splitbelow = true
-- vim.opt.smartindent = true
-- vim.opt.lazyredraw = true

-- /------------+
-- | COMPLETION |
-- +------------/
vim.opt.completeopt = {
    'menu',     -- Use menu
    'menuone',  -- Use menu also when there is only one candidate
    'noinsert', -- Do not insert immediately
    'fuzzy',    -- Fuzzy matching
}

-- /------+
-- | MISC |
-- +------/
vim.opt.clipboard = "unnamedplus"
vim.opt.guicursor = "i:block"
-- vim.opt.scrollback = 300
-- vim.opt.termguicolors = true
