--[[
    Sonoran Plugins

    Plugin Configuration

    Put all needed configuration in this file.

]]
local config = {
    enabled = false,
    configVersion = "1.0",
    pluginName = "forcereg", -- name your plugin here
    pluginAuthor = "SonoranCAD", -- author
    requiresPlugins = {"apicheck"}, -- required plugins for this plugin to work, separated by commas

    --[[
        Below defines the "captive" option to use:

        Nag: Simply nags the user with a big notification across the top of their screen.
        Freeze: Freezes the player at their spawn point with a big notification.
        Whitelist: Prevents connection to the server entirely via deferrals (WARNING: NOT COMPATIBLE WITH ADAPTIVE CARD RESOURCES)
    ]]
    captiveOption = "nag",

    -- What message to show with the above options? Nag, Freeze, and Captive can use colors.
    captiveMessage = "You must ~r~register~s~ with our CAD before playing! Visit ~r~http://yourwebsite.here~s~ to do so."

    -- What message to show the /verifycad command? This displays under the notice.
    verifyMessage = "Type ~r~/verifycad~s~ in chat when finished."
}

if config.enabled then
    Config.RegisterPluginConfig(config.pluginName, config)
end