if ya.target_family() == "windows" then

		local home = os.getenv("USERPROFILE")

	require("bunny"):setup({


		hops = {
			{ key = "D",          	path = home .. "/Desktop",      desc = "Desktop"      },
			{ key = "d",          	path = home .. "/Downloads/",    desc = "Downloads"    },
			{ key = {"C", "l"}, 	path = home .. "/AppData/Local/",      desc = "Config files Local" },
			{ key = {"C", "r"},		path = home .. "/AppData/Roaming/",      desc = "Config files Roaming" },
			{ key = "y",          	path = home .. "/AppData/Roaming/yazi/",      desc = "Yazi Config" },
			{ key = "N",          	path = home .. "/AppData/Local/nvim/",      desc = "Nvim Config" },
			{ key = "h",          	path = home .. "/Documents/",     desc = "Documents" },
			{ key = "u",          	path = home .. "/Documents/HOME/Uni/",     desc = "Uni" },
			{ key = "z",          	path = home .. "/Documents/HOME/Code/zig",     desc = "Zig Code" },
		},
		desc_strategy = "path",
		ephemeral = true,
		tabs = true,
		notify = false,
		fuzzy_cmd = "fzf",

	})
else 
	require("bunny"):setup({

		hops = {
			{ key = "/",          path = "/",                                    },
			{ key = "t",          path = "/tmp",                                 },
			{ key = "n",          path = "~/nixos/hosts/linux_pc/",     desc = "nix config"    },
			{ key = "~",          path = "~",              desc = "Home"         },
			{ key = "D",          path = "~/Desktop",      desc = "Desktop"      },
			{ key = "d",          path = "~/Downloads/",    desc = "Downloads"    },
			{ key = "C",          path = "~/.config",      desc = "Config files" },
			{ key = "y",          path = "~/.config/yazi/",      desc = "Yazi Config" },
			{ key = "N",          path = "~/.config/nvim/",      desc = "Nvim Config" },
			{ key = "c",          path = "~/Documents/code/",     desc = "Code" },
			{ key = "h",          path = "~/Documents/",     desc = "Documents" },
			{ key = "u",          path = "~/Documents/Uni/BA/",     desc = "Uni" },
			{ key = "z",          path = "~/Documents/code/zig",     desc = "Zig Code" },
			{ key = { "l", "s" }, path = "~/.local/share", desc = "Local share"  },
			{ key = { "l", "b" }, path = "~/.local/bin",   desc = "Local bin"    },
			{ key = { "l", "t" }, path = "~/.local/state", desc = "Local state"  },
		},
		desc_strategy = "path",
		ephemeral = true,
		tabs = true,
		notify = false,
		fuzzy_cmd = "fzf",

	})

end
