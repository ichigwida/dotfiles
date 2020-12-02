-- vim.o.python_host_prog='/usr/bin/python'
-- vim.o.python3_host_prog='/usr/bin/python3'

vim.api.nvim_set_var( 'python_host_prog', '/usr/bin/python' )
vim.api.nvim_set_var( 'python3_host_prog', '/usr/bin/python3' )

vim.cmd('syntax on')
vim.cmd('syntax enable')
vim.cmd('filetype on')

vim.o.autoread = true
vim.o.ruler = true
vim.o.shiftround = true
vim.o.hlsearch = true

vim.o.history = 5000
vim.o.backup = false                                                    -- disable backup
vim.o.swapfile = false                                                  -- disable swapfile
vim.o.writebackup = false                                               -- disable backup

vim.o.wrap = false                                                      -- dont wrap lines
vim.o.number = true                                                     -- enable number
vim.o.relativenumber = true                                             -- enable relativenumber
vim.o.termguicolors = true                                              -- truecolours for better experience
vim.o.hidden = true                                                     -- keep hidden buffers
vim.o.showmode = false                                                  -- don't show mode

vim.o.smartcase = true                                                  -- improve searching using '/'
vim.o.hlsearch = true                                                   -- don't highlight matching search
vim.o.incsearch = true
vim.o.ignorecase = true                                                 -- case insensitive on search
vim.o.re = 0                                                            -- set regexp engine to auto
vim.o.inccommand = "split"                                              -- incrementally show result of command

vim.o.autowrite = true                                                  -- autowrite buffer when it's not focused

vim.o.autoindent = true                                                 -- enable autoindent
vim.o.laststatus = 2                                                    -- always enable statusline
vim.o.cursorline = true                                                 -- enable cursorline
vim.o.cursorcolumn = true
vim.o.splitbelow = true                                                 -- split below instead of above
vim.o.splitright = true                                                 -- split right instead of left
vim.o.startofline = false                                               -- don't go to the start of the line when moving to another file
vim.o.lazyredraw = true                                                 -- lazyredraw to make macro faster

vim.o.expandtab = true                                                  -- use spaces instead of tabs
vim.o.shiftwidth = 4                                                    -- set indentation width
vim.o.tabstop = 4                                                       -- tabsize

vim.o.scrolloff = 2                                                     -- make scrolling better
vim.o.sidescroll = 10                                                   -- make scrolling better
vim.o.sidescrolloff = 15                                                -- make scrolling better
vim.o.smarttab = true                                                   -- make tab behaviour smarter
vim.o.smartindent = true                                                -- smarter indentation

vim.o.completeopt = 'longest,menuone,noinsert,noselect'                 -- better completion
vim.o.wildmode ='longest,list,full'
vim.o.wildoptions = "pum"
vim.o.pumheight = 10                                                    -- limit completion items

vim.o.synmaxcol = 300                                                   -- set limit for syntax highlighting in a single line
vim.o.updatetime = 100                                                  -- set faster update time
vim.o.timeoutlen = 500                                                  -- faster timeout wait time

vim.o.encoding = "UTF-8"                                                -- set encoding
vim.o.mouse = "a"                                                       -- enable mouse support
vim.o.foldmethod = "marker"                                             -- foldmethod using marker
vim.o.signcolumn = "yes"                                                -- enable sign column all the time, 4 column
vim.o.pumblend = 10

vim.o.list = true                                                       -- display listchars
vim.o.listchars = "extends:›,precedes:‹,nbsp:␣,trail:·,tab:→\\ ,eol:¬"  -- set listchars


-- vimp = lua require('vimrc')
-- vimp.nnoremap('<leader>hw', function()
--   print('hello')
--   print('world')
-- end)
