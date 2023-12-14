local wezterm = require 'wezterm'
local config = {}

config = wezterm.config_builder()

config.color_scheme = 'Monokai Pro (Gogh)'
config.colors = {
    background = '222222'
}
config.default_cursor_style = 'BlinkingBar'
config.font = wezterm.font('SauceCodePro NF Medium')
config.initial_cols = 110
config.initial_rows = 25
config.launch_menu = {}

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    table.insert(config.launch_menu, {
        label = 'PowerShell',
        args = { 'powershell.exe', '-NoLogo' },
    })
    -- table.insert(config.launch_menu, {
    --     label = 'Ubuntu 22.04',
    --     args = { 'ubuntu2204.exe' },
    -- })
end

return config
