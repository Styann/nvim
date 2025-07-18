--- go to previous/next word
vim.api.nvim_set_keymap('n', '<A-Left>', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Right>', 'w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-Left>', '<C-o>b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-Right>', '<C-o>w', { noremap = true, silent = true })

--- delete word
vim.api.nvim_set_keymap('i', '<A-BS>', '<C-w>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-Delete>', '<C-o>daw', { noremap = true, silent = true })

--- render whitespaces, tabs and eol
vim.o.list = true
vim.o.listchars = "space:·,tab:→ ,trail:~,eol:↴"

--- use spaces for indentation
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    })

    use { "catppuccin/nvim", as = "catppuccin" }

end)

vim.cmd "colorscheme catppuccin"

vim.opt.relativenumber = true


