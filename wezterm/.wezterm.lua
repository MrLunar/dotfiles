local wezterm = require 'wezterm'
local config = {}

config = wezterm.config_builder()

config.color_scheme = 'Monokai Pro (Gogh)'
config.colors = {
    background = '222222'
}
config.font = wezterm.font('SauceCodePro NF Medium')
config.force_reverse_video_cursor = true
config.initial_cols = 110
config.initial_rows = 25

config.launch_menu = {}
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    table.insert(config.launch_menu, {
        label = 'PowerShell',
        args = { 'powershell.exe', '-NoLogo' },
    })
    table.insert(config.launch_menu, {
        label = 'Git Bash',
        args = { 'C:/Program Files/Git/bin/bash.exe' },
    })
end

return config
