return {
    "goolord/alpha-nvim",
    config = function ()
	local alpha = require("alpha")
	local dashboard = require("alpha.themes.dashboard")
	dashboard.section.header.val = {
	    -- insert ascii art here
	    [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠉⠉⣀⣀⣀⠉⠙⠿⣿⣿⣿ ]],
	    [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢁⣤⣶⣿⣿⣿⣿⣿⣿⣶⣄⠘⢿⣿ ]],
	    [[ ⡟⠻⠿⠿⠿⠿⠿⠿⠿⠋⣴⣿⣿⣿⣿⣿⠋⠹⣿⣿⣿⣿⣧⠀⢿ ]],
	    [[ ⣿⣦⣄⠀⠠⣤⣤⣤⣴⣾⣿⣿⣿⣿⣿⣧⣀⣴⣿⣿⣿⣿⣿⠀⢸ ]],
	    [[ ⣿⣿⣿⣿⣦⡈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⢸ ]],
	    [[ ⣿⣿⣿⣿⣿⣿⣧⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠂⣼ ]],
	    [[ ⣿⣿⣿⣿⣿⣿⡏⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿ ]],
	    [[ ⣿⣿⣿⣿⣿⣿⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⢀⣿ ]],
	    [[ ⣿⣿⣿⣿⣿⡇⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣼⣿ ]],
	    [[ ⣿⣿⣿⣿⡿⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢠⣿⣿ ]],
	    [[ ⣿⣿⣿⣿⠁⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⣸⣿⣿ ]],
	}
	dashboard.section.buttons.val = {
	    dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"), -- Note to self: <CR> is carriage return 
	    dashboard.button( "f", "󰈞  Find files in CWD", ":Telescope find_files <CR>"),
	    dashboard.button( "t", "󱎸  Find text in CWD", ":Telescope live_grep <CR>"),
	    dashboard.button( "l", "󰒲  Lazy plugin manager", ":Lazy <CR>"),
	    dashboard.button( "m", "󰣪  Mason", ":Mason <CR>"),
	    dashboard.button( "q", "󰩈  Quit NVIM" , ":qa<CR>"),
	}

	dashboard.section.footer.val = "footer text"

	dashboard.config.opts.noautocmd = true

	vim.cmd[[autocmd User AlphaReady echo "ready"]]

	alpha.setup(dashboard.config)
    end
};
