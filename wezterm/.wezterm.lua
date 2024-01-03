local wezterm = require 'wezterm'
local act = wezterm.action
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

config.keys = {
    -- Add Ctrl+V binding to paste
    {
        key='v', 
        mods='CTRL', 
        action=act.PasteFrom 'Clipboard' 
    },
    -- If text is selected when CTRL+C is pressed, copy the selection rather than send a signal.
    {
        key = 'c',
        mods = 'CTRL',
        action = wezterm.action_callback(function(window, pane)
            selection_text = window:get_selection_text_for_pane(pane)
            is_selection_active = string.len(selection_text) ~= 0
            if is_selection_active then
                window:perform_action(wezterm.action.CopyTo('ClipboardAndPrimarySelection'), pane)
            else
                window:perform_action(wezterm.action.SendKey{ key='c', mods='CTRL' }, pane)
            end
        end),
    }
}

config.mouse_bindings = {
    -- Change the default click behavior so that it only selects
    -- text and doesn't open hyperlinks
    {
        event = { Up = { streak = 1, button = 'Left' } },
        mods = 'NONE',
        action = act.CompleteSelection 'ClipboardAndPrimarySelection',
    },
    -- ...and make CTRL-Click open hyperlinks
    {
        event = { Up = { streak = 1, button = 'Left' } },
        mods = 'CTRL',
        action = act.OpenLinkAtMouseCursor,
    },
    -- ...but disable the 'Down' event of CTRL-Click to avoid weird program behaviors
    -- https://wezfurlong.org/wezterm/config/mouse.html#gotcha-on-binding-an-up-event-only
    {
        event = { Down = { streak = 1, button = 'Left' } },
        mods = 'CTRL',
        action = act.Nop,
    },
}

return config
