if mods["wide-aai-chests"] then
    data:extend(
    {
        {
            type = "bool-setting",
            name = "wide-aai-chests-enabled-by-default",
            setting_type = "startup",
            default_value = true
        },
        {
            type = "bool-setting",
            name = "wide-aai-chests-enabled",
            setting_type = "startup",
            default_value = false
        },
    })
    end
    data:extend({
        {
            type = "bool-setting",
            name = "enable-wide-containers-beta",
            setting_type = "startup",
            default_value = false
        },
    })