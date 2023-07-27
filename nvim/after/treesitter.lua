require 'nvim-treesitter.configs'.setup{
	ensure_installed = {"c", "python", "latex", "lua", "java", "javascript"},
	sync_install = false, 
	auto_install = true, 
	highlight = {
		enable = true,
		additionnal_vim_regex_highlighting = false,
	},


}
