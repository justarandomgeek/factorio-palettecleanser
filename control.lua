-- 
-- WHAT THIS FILE DOES
-- 
-- The Factorio map and minimap will not show newly chosen colors unless commanded to rechart.
-- 
-- The main purpose of this file is to evaluate if map colors changed, and if so, order an automatic rechart.
-- We really want to avoid recharting the map unless it's actually needed, because it reveals all current
-- enemy positions, even if they were unknown before (in explored/mapped but not actively radar-scanned chunks).
-- A rechart is like getting to use a single-use huge radar that briefly live-scans every already-explored chunk.
--
-- With that in mind, we will only automatically rechart if ((1 OR 2) AND (3 OR 4)):
--          /---1. Palette Cleanser is newly installed or newly updated
--     ----OR
--     |    \---2. Startup settings have changed (any startup setting for any mod)
--    AND
--     |    /---3. Selected map colors are different than currently rendered map colors
--     ----OR
--          \---4. The Palette Cleanser map colors checkbox was just checked or unchecked
--
-- Advanced users who are directly editing color-schemes.lua should force a rechart by using the hotkey (default Control-M).
--



-------------
-- HEADERS --
-------------

require "util" -- for access to the table.compare function
local color_schemes = require('color-schemes')
local choices = require("choices")


-- READ MAIN COLOR SCHEME SETTING
if settings.startup["palette-cleanser-color-scheme"].value == choices.color_scheme.deuteranopia then
    active_scheme = color_schemes["deuteranopia"]
elseif settings.startup["palette-cleanser-color-scheme"].value == choices.color_scheme.custom then
    active_scheme = color_schemes["custom"]
end



-----------------
-- RECHART MAP --
-----------------

local function rechart(msg)
    if not msg then msg = "" end
    game.print("Palette Cleanser: "..tostring(msg).."Recharting map ")
    game.forces.player.rechart()
    
    -- Store current map color settings in global tables so they can be compared with future settings
    global.old_enable_resources_terrain = settings.startup["palette-cleanser-enable-resources-terrain"].value
    global.old_crude_oil_chart_color = active_scheme.crude_oil_chart_color
    global.old_iron_ore_chart_color = active_scheme.iron_ore_chart_color
    global.old_copper_ore_chart_color = active_scheme.copper_ore_chart_color
    global.old_stone_chart_color = active_scheme.stone_chart_color
    global.old_sand_1_chart_color = active_scheme.sand_1_chart_color
    global.old_sand_2_chart_color = active_scheme.sand_2_chart_color
    global.old_sand_3_chart_color = active_scheme.sand_3_chart_color
    global.old_cliff_chart_color = active_scheme.cliff_chart_color
    global.old_tree_chart_color = active_scheme.tree_chart_color 
end


-------------------
-- SCRIPT EVENTS --
-------------------

script.on_init(function()
    -- Set up globals to persist map color settings between saves
    global.old_enable_resources_terrain = false
    global.old_crude_oil_chart_color = ""
    global.old_iron_ore_chart_color = ""
    global.old_copper_ore_chart_color = ""
    global.old_stone_chart_color = ""
    global.old_sand_1_chart_color = ""
    global.old_sand_2_chart_color = ""
    global.old_sand_3_chart_color = ""
    global.old_cliff_chart_color = ""
    global.old_tree_chart_color = ""
end)
  
script.on_event("palette-cleanser-force-map-rechart", function(event) -- keyboard shortcut (default Control-M)
    rechart()
end)

script.on_configuration_changed(function(data)
    --  When this mod is installed or updated, or startup settings were changed, the map might need to be recharted
    -- Assume we do not need a rechart.  Evaluate if we might.  Assert if we do.
    local rechart_message = "Settings changed; "  -- default presumption; change if elsewhy
    local might_need_rechart = false
    local needs_rechart = false

    local changes = data.mod_changes["palettecleanser"]
    if changes then -- this mod changed

        if not changes.old_version then
            -- mod was just added to a saved game; evaluate colors
            rechart_message = "New installation; "
            might_need_rechart = true

        elseif changes.old_version ~= changes.new_version then
            -- mod updated; evaluate colors
            rechart_message = "Mod updated from v"..tostring(changes.old_version).." to v"..tostring(changes.new_version).."; "
            might_need_rechart = true

        end

    end
    if data.mod_startup_settings_changed == true then
        -- startup settings might not require a rechart or might even be from other mods; evaluate colors
        might_need_rechart = true
    end



    -- OK, let's evaluate those colors and find out if we actually need a rechart.
    if might_need_rechart == true then
        
        if settings.startup["palette-cleanser-enable-resources-terrain"].value == true then
            if global.old_enable_resources_terrain == false then
                -- Map colors were just enabled; assume some colors changed and rechart.
                needs_rechart = true
            else
                -- Map colors were already enabled.  Compare current map colors with previous map colors; raise flag if any color changed.
                if not util.table.compare(active_scheme.crude_oil_chart_color, global.old_crude_oil_chart_color) then needs_rechart = true end
                if not util.table.compare(active_scheme.iron_ore_chart_color, global.old_iron_ore_chart_color) then needs_rechart = true end
                if not util.table.compare(active_scheme.copper_ore_chart_color, global.old_copper_ore_chart_color) then needs_rechart = true end
                if not util.table.compare(active_scheme.stone_chart_color, global.old_stone_chart_color) then needs_rechart = true end
                if not util.table.compare(active_scheme.sand_1_chart_color, global.old_sand_1_chart_color) then needs_rechart = true end
                if not util.table.compare(active_scheme.sand_2_chart_color, global.old_sand_2_chart_color) then needs_rechart = true end
                if not util.table.compare(active_scheme.sand_3_chart_color, global.old_sand_3_chart_color) then needs_rechart = true end
                if not util.table.compare(active_scheme.cliff_chart_color, global.old_cliff_chart_color) then needs_rechart = true end
                if not util.table.compare(active_scheme.tree_chart_color, global.old_tree_chart_color) then needs_rechart = true end
            end
        else
            if global.old_enable_resources_terrain == true then
                -- Map colors were just disabled; assume some colors changed and rechart.
                needs_rechart = true
            else
                -- Map colors were already disabled; nothing probably changed, so don't rechart.
            end
        end
    end



    -- Rechart map if needed
    if needs_rechart == true then
        rechart(rechart_message)
    end

end
)

