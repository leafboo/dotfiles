-- Note: nvim-treesitter is just a plugin that makes the installation process of parsers easier (kinda like a plugin manager)
-- The real treesitter is already installed in neovim
return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
	require('nvim-treesitter.config').setup({
	    ensure_installed = "maintained",
	    auto_install = true,
	    highlight = { enable = true },
	    indent = { enable = true, disable = {  } },
	})
    end,
}
