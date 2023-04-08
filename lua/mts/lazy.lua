-- Install package manager
--    https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Begin installation of plugins
require('lazy').setup({

	{ -- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate", -- kickstart.nvim used a `configure` function, which seemed to be triggring "All parcers..." message at startup.
   	 	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
   	 	},
  },

  -- Colorschemes supporting treesiter
	'Abstract-IDE/Abstract-cs', -- adds 'abscs' 
	'tomasiser/vim-code-dark', -- adds codedark, modeled after VS Code Dark+
	'cpea2506/one_monokai.nvim', -- adds one_monokai
 	'Mofiqul/adwaita.nvim',
	}) --End plugin installs
		vim.g.adwaita_darker = true -- darker theme version
