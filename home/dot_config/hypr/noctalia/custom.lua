hl.config({
	misc = {
		allow_session_lock_restore = true,
	},
})
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd("pkill qs; pkill hyprlock; hyprlock"), { locked = true })
