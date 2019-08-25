-------------
-- HEADERS --
-------------

local choices = require("choices") -- choices.lua


--------------
-- SETTINGS --
--------------

data:extend{
    -- Startup
    {
		type = "string-setting",
		name = "palette-cleanser-color-scheme",
		setting_type = "startup",
		default_value = choices.color_scheme.deuteranopia,
		allowed_values = choices.color_scheme,
		order = "a",
	},
    {
        type = "bool-setting",
        name = "palette-cleanser-enable-resources-terrain",
        setting_type = "startup",
        default_value = true,
        order = "b-a"
    },
    {
        type = "bool-setting",
        name = "palette-cleanser-enable-roboport-area",
        setting_type = "startup",
        default_value = true,
        order = "b-b"
    },
    {
        type = "bool-setting",
        name = "palette-cleanser-enable-turret-range",
        setting_type = "startup",
        default_value = true,
        order = "b-c"
    },
    {
        type = "bool-setting",
        name = "palette-cleanser-enable-electric-pole-drill",
        setting_type = "startup",
        default_value = true,
        order = "b-d"
    },
    {
        type = "bool-setting",
        name = "palette-cleanser-enable-circuits",
        setting_type = "startup",
        default_value = true,
        order = "c-a"
    },
    {
        type = "bool-setting",
        name = "palette-cleanser-enable-fluids",
        setting_type = "startup",
        default_value = true,
        order = "c-b"
    },
    {
        type = "bool-setting",
        name = "palette-cleanser-enable-logistics",
        setting_type = "startup",
        default_value = true,
        order = "c-c"
    },
    {
        type = "bool-setting",
        name = "palette-cleanser-enable-ammo",
        setting_type = "startup",
        default_value = true,
        order = "c-d"
    },
    {
        type = "bool-setting",
        name = "palette-cleanser-enable-thick-wires",
        setting_type = "startup",
        default_value = true,
        order = "d-a"
    },
    {
        type = "string-setting",
        name = "palette-cleanser-signal-wire-mode",
        setting_type = "startup",
        default_value = choices.wire_mode.redblue,
        allowed_values = choices.wire_mode,
        order = "d-b"
    }

}