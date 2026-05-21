return {
    {
	"folke/tokyonight.nvim",
	lazy = false, -- makes sure we load this during startup
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
	    vim.cmd.colorscheme 'tokyonight-night'
	end,
    },
    -- For `plugins/markview.lua` users.
    {
	"OXY2DEV/markview.nvim",
	lazy = false,

	-- Completion for `blink.cmp`
	-- dependencies = { "saghen/blink.cmp" },
    };
    {
    "nvim-lualine/lualine.nvim",
        dependencies = {
          "nvim-tree/nvim-web-devicons", -- imports icon dependency
        },
        opts = { -- idk what the difference between 'opts' and 'config' key is tbh. I'll look into it later
          theme = "tokyonight-dark", -- sets the lualine theme to tokyodark
	  sections = {
	      lualine_a = {'mode'},
	      lualine_b = {'branch'},
	      lualine_c = {'filename'},
	      lualine_x = {'filetype'},
	      lualine_y = {
		  {
		      'fileformat',
		      symbols = {
			  unix = 'unix'
		      }
		  },
	      },
	      lualine_z = {'location'}
	  },
	  options = {
	      section_separators = { left = '', right = '' },
	      component_separators = { left = '|', right = '|' }
	  }
      }
  },
}
