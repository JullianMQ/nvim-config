return {
	"barrett-ruth/live-server.nvim",
	name = "nvim-live-server",
	build = "npm add -g live-server",
	cmd = { "LiveServerStart", "LiveServerStop" },
	config = true,
}
