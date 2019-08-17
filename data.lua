-- DEVELOPMENT PLANS
-- - Add hex color support (stdlib) to make editing color table easier
-- - Include basic color customization instructions for volunteers on the mod portal FAQ

-- MOD SETTINGS
-- 1. Dropdown menu: choose color scheme: Protanopia, Deuteranopia, Tritanopia, Custom
-- - Other options will be added when we develop a color scheme for them
-- 2. Checkboxes to enable or disable groups of color changes.

-- OVERVIEW OF COLOR ENHANCEMENTS (AND MOD SETTINGS)
-- Overlay and map color enhancements:
-- - Turret and grenade ranges (light blue)
-- - Roboport areas (magenta and green)
-- - Electric Pole and Mining Drill areas (lighter blue)
-- - Resource colors (various)
-- - Terrain colors (darker sand and altered cliffs)

-- Item and recipe color enhancements:
-- - Fluids (lighter light oil, better pipe/tank colors for several fluids)
-- - Ammo (explosive shells and cluster grenades)
-- - Logistics (pink active provider chests, blue requester chests, and pink filter inserters)
-- - Wires (thicker wires, and/or replace red or green with blue)
--
-- All color changes are dynamically generated according to the color tables except ammo, logistic chests, inserters, and wires.



-- READ MAIN COLOR SCHEME SETTING
local color_schemes = require('color-schemes')
local choices = require("choices")

if settings.startup["palette-cleanser-color-scheme"].value == choices.color_scheme.deuteranopia then
    active_scheme = "deuteranopia"
elseif settings.startup["palette-cleanser-color-scheme"].value == choices.color_scheme.custom then
    active_scheme = "custom"
end



-- OVERLAYS
-- --------


-- TURRETS AND GRENADES
if settings.startup["palette-cleanser-enable-turret-range"].value then
    -- Grenade radius in both world and map view
    data.raw["utility-constants"].default.capsule_range_visualization_color = color_schemes[active_scheme].grenade_range_tint
    -- Turret radius in world view
    data.raw["utility-constants"].default.turret_range_visualization_color = color_schemes[active_scheme].turret_range_world_color
    -- Turret radius in map view
    data.raw["utility-constants"].default.chart.turret_range_color = color_schemes[active_scheme].turret_range_chart_color
    -- Artillery radius (map view only)
    data.raw["utility-constants"].default.chart.artillery_range_color = color_schemes[active_scheme].artillery_range_chart_color
end

-- ROBOPORTS
if settings.startup["palette-cleanser-enable-roboport-area"].value then
    data.raw["utility-sprites"].default.logistic_radius_visualization.filename = "__palettecleanser__/graphics/overlay/visualization-logistic-radius.png"
    data.raw["utility-sprites"].default.logistic_radius_visualization.tint = color_schemes[active_scheme].roboport_logistic_range_color
    data.raw["utility-sprites"].default.construction_radius_visualization.filename = "__palettecleanser__/graphics/overlay/visualization-construction-radius.png"
    data.raw["utility-sprites"].default.construction_radius_visualization.tint = color_schemes[active_scheme].roboport_construction_range_color
end

-- POLLUTION
-- if settings.startup["palette-cleanser-enable-pollution-cloud"].value then
--     -- Pollution overlay might be okay in 0.17 since they increased color contrast; leaving commented code here for reference in case it's requested
--     data.raw["utility-sprites"].default.pollution_visualization.filename = "__palettecleanser__/graphics/pollution-visualization.png"
--     data.raw["utility-sprites"].default.pollution_visualization.tint = color_schemes[active_scheme].pollution_cloud_color
-- end

-- ELECTRIC POLES AND MINING DRILLS
if settings.startup["palette-cleanser-enable-electric-pole-drill"].value then
    data.raw['electric-pole']['small-electric-pole'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/overlay/electric-pole-radius-visualization.png"
    data.raw['electric-pole']['small-electric-pole'].radius_visualisation_picture.tint = color_schemes[active_scheme].elec_pole_small_area_color
    data.raw['electric-pole']['medium-electric-pole'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/overlay/electric-pole-radius-visualization.png"
    data.raw['electric-pole']['medium-electric-pole'].radius_visualisation_picture.tint = color_schemes[active_scheme].elec_pole_medium_area_color
    data.raw['electric-pole']['big-electric-pole'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/overlay/electric-pole-radius-visualization.png"
    data.raw['electric-pole']['big-electric-pole'].radius_visualisation_picture.tint = color_schemes[active_scheme].elec_pole_big_area_color
    data.raw['electric-pole']['substation'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/overlay/electric-pole-radius-visualization.png"
    data.raw['electric-pole']['substation'].radius_visualisation_picture.tint = color_schemes[active_scheme].elec_pole_substation_area_color
    -- Mining Drill area overlay currently shifts off-center when specifying a PNG file.  Needs further debugging.
    -- For now, the tint effectively enhances mining drill area contrast.
    -- data.raw['mining-drill']['electric-mining-drill'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/electric-mining-drill-radius-visualization.png"
    data.raw['mining-drill']['electric-mining-drill'].radius_visualisation_picture.tint = color_schemes[active_scheme].mining_drill_area_color
    
end

-- MAP RESOURCE COLORS AND TERRAIN COLORS
if settings.startup["palette-cleanser-enable-resources-terrain"].value then
    data.raw["resource"]["crude-oil"].map_color = color_schemes[active_scheme].crude_oil_chart_color
    data.raw["resource"]["iron-ore"].map_color = color_schemes[active_scheme].iron_ore_chart_color
    data.raw["resource"]["copper-ore"].map_color = color_schemes[active_scheme].copper_ore_chart_color
    data.raw["resource"]["stone"].map_color = color_schemes[active_scheme].stone_chart_color
    data.raw.tile["sand-1"].map_color = color_schemes[active_scheme].sand_1_chart_color
    data.raw.tile["sand-2"].map_color = color_schemes[active_scheme].sand_2_chart_color
    data.raw.tile["sand-3"].map_color = color_schemes[active_scheme].sand_3_chart_color
    data.raw["cliff"]["cliff"].map_color = color_schemes[active_scheme].cliff_chart_color
    -- Trees are sometimes hard to see on the map.  This may warrant further research and debugging.
    -- data.raw["utility-constants"].default.chart.default_color_by_type["tree"] = {r = 0.25, g = 0.50, b = 0.25, a = 0.35}
end


-- ITEMS & RECIPES
-- ---------------


-- FLUIDS

if settings.startup["palette-cleanser-enable-fluids"].value then
    -- Invert and/or adjust some fluid colors so they're easier to identify in pipes and tanks
    data.raw["fluid"]["petroleum-gas"].base_color = color_schemes[active_scheme].petroleum_gas_base_color
    data.raw["fluid"]["petroleum-gas"].flow_color = color_schemes[active_scheme].petroleum_gas_flow_color
    data.raw["fluid"]["light-oil"].base_color = color_schemes[active_scheme].light_oil_base_color
    data.raw["fluid"]["light-oil"].flow_color = color_schemes[active_scheme].light_oil_flow_color
    data.raw["fluid"]["sulfuric-acid"].base_color = color_schemes[active_scheme].sulfuric_acid_base_color
    data.raw["fluid"]["sulfuric-acid"].flow_color = color_schemes[active_scheme].sulfuric_acid_flow_color
    data.raw["fluid"]["lubricant"].base_color = color_schemes[active_scheme].lubricant_base_color
    data.raw["fluid"]["lubricant"].flow_color = color_schemes[active_scheme].lubricant_flow_color

    -- create dynamically tinted prototype icons for light oil, using the method described here: https://forums.factorio.com/viewtopic.php?t=60558
    data.raw["fluid"]["light-oil"].icons = {
        {
            icon = "__palettecleanser__/graphics/icons/generic-fluid.png",
            -- icon_size = 32, --might be mandatory
            tint = color_schemes[active_scheme].light_oil_base_color
        },

    }
    data.raw["recipe"]["heavy-oil-cracking"].icons = {
        {   
            -- Use a blank base for your icon to prevent scaling problems in crafting menu
            -- But don't make it blank - make it a small ~16px white oval with 1% alpha.
            -- Otherwise the icon won't have that nice dark alt-mode background
            -- on assembling machines and chemical plants.
            
            icon = "__palettecleanser__/graphics/icons/AlmostBlank32.png",
            icon_size = 32,
        },
        {
            icon = data.raw["fluid"]["heavy-oil"].icon,
            scale = 0.75,
            shift = {0,-4}
        },
        {
            icon = "__palettecleanser__/graphics/icons/generic-fluid.png",
            tint = color_schemes[active_scheme].light_oil_base_color,
            scale = 0.5,
            shift = {-10,8}
        },
        {
            icon = "__palettecleanser__/graphics/icons/generic-fluid.png",
            tint = color_schemes[active_scheme].light_oil_base_color,
            scale = 0.5,
            shift = {10,8}
        }
    }
    data.raw["recipe"]["light-oil-cracking"].icons = {
        {
            icon = "__palettecleanser__/graphics/icons/AlmostBlank32.png",
            icon_size = 32,
        },
        {
            icon = "__palettecleanser__/graphics/icons/generic-fluid.png",
            tint = color_schemes[active_scheme].light_oil_base_color,
            scale = 0.75,
            shift = {0,-4}
        },
        {
            icon = data.raw["fluid"]["petroleum-gas"].icon,
            scale = 0.4375,
            shift = {-9,11}
        },
        {
            icon = data.raw["fluid"]["petroleum-gas"].icon,
            scale = 0.4375,
            shift = {9,11}
        }
    }
    data.raw["recipe"]["solid-fuel-from-light-oil"].icons = {
        {
            icon = data.raw["item"]["solid-fuel"].icon,
        },
        {
            icon = "__palettecleanser__/graphics/icons/generic-fluid.png",
            tint = color_schemes[active_scheme].light_oil_base_color,
            scale = 0.75,
            shift = {9,5}
        }
    }
    
end

-- AMMO
if settings.startup["palette-cleanser-enable-ammo"].value then
    data.raw["ammo"]["explosive-cannon-shell"].icon = "__palettecleanser__/graphics/icons/explosive-cannon-shell.png"
    data.raw["ammo"]["explosive-uranium-cannon-shell"].icon = "__palettecleanser__/graphics/icons/explosive-uranium-cannon-shell.png"
    data.raw["capsule"]["cluster-grenade"].icon = "__palettecleanser__/graphics/icons/cluster-grenade.png"
    data.raw["projectile"]["cluster-grenade"].animation.filename = "__palettecleanser__/graphics/icons/cluster-grenade.png"
end

-- LOGISTICS
-- For now the following items look better as prerendered png files.  Maybe in the future we can figure out a better way to desaturate/retint these on the fly.
if settings.startup["palette-cleanser-enable-logistics"].value then
    -- Active Provider Chest --> pink
    -- Requester Chest --> deep blue
    -- Filter inserter --> pink

    data.raw["item"]["logistic-chest-active-provider"].icon = "__palettecleanser__/graphics/icons/logistic-chest-active-provider.png"
    data.raw["logistic-container"]["logistic-chest-active-provider"].icon = "__palettecleanser__/graphics/icons/logistic-chest-active-provider.png"
    data.raw["logistic-container"]["logistic-chest-active-provider"].animation.layers[1].filename ="__palettecleanser__/graphics/entity/logistic-chest/logistic-chest-active-provider.png"
    data.raw["logistic-container"]["logistic-chest-active-provider"].animation.layers[1].hr_version.filename ="__palettecleanser__/graphics/entity/logistic-chest/hr-logistic-chest-active-provider.png"

    data.raw["item"]["logistic-chest-requester"].icon = "__palettecleanser__/graphics/icons/logistic-chest-requester.png"
    data.raw["logistic-container"]["logistic-chest-requester"].icon = "__palettecleanser__/graphics/icons/logistic-chest-requester.png"
    data.raw["logistic-container"]["logistic-chest-requester"].animation.layers[1].filename ="__palettecleanser__/graphics/entity/logistic-chest/logistic-chest-requester.png"
    data.raw["logistic-container"]["logistic-chest-requester"].animation.layers[1].hr_version.filename ="__palettecleanser__/graphics/entity/logistic-chest/hr-logistic-chest-requester.png"

    data.raw["item"]["filter-inserter"].icon = "__palettecleanser__/graphics/icons/filter-inserter.png"
    data.raw["inserter"]["filter-inserter"].icon = "__palettecleanser__/graphics/icons/filter-inserter.png"
    data.raw["inserter"]["filter-inserter"].hand_base_picture.filename ="__palettecleanser__/graphics/entity/filter-inserter/filter-inserter-hand-base.png"
    data.raw["inserter"]["filter-inserter"].hand_base_picture.hr_version.filename ="__palettecleanser__/graphics/entity/filter-inserter/hr-filter-inserter-hand-base.png"
    data.raw["inserter"]["filter-inserter"].hand_closed_picture.filename ="__palettecleanser__/graphics/entity/filter-inserter/filter-inserter-hand-closed.png"
    data.raw["inserter"]["filter-inserter"].hand_closed_picture.hr_version.filename ="__palettecleanser__/graphics/entity/filter-inserter/hr-filter-inserter-hand-closed.png"
    data.raw["inserter"]["filter-inserter"].hand_open_picture.filename ="__palettecleanser__/graphics/entity/filter-inserter/filter-inserter-hand-open.png"
    data.raw["inserter"]["filter-inserter"].hand_open_picture.hr_version.filename ="__palettecleanser__/graphics/entity/filter-inserter/hr-filter-inserter-hand-open.png"
    data.raw["inserter"]["filter-inserter"].platform_picture.sheet.filename ="__palettecleanser__/graphics/entity/filter-inserter/filter-inserter-platform.png"
    data.raw["inserter"]["filter-inserter"].platform_picture.sheet.hr_version.filename ="__palettecleanser__/graphics/entity/filter-inserter/hr-filter-inserter-platform.png"
    -- Filter-inserter-remnants implementation needs further debugging.  For now, they'll simply turn purple when destroyed. :)
    -- data.raw["corpse"]["filter-inserter-remnants"].animation.filename ="__palettecleanser__/graphics/entity/filter-inserter/remnants/filter-inserter-remnants.png"
    -- data.raw["corpse"]["filter-inserter-remnants"].animation.hr_version.filename ="__palettecleanser__/graphics/entity/filter-inserter/remnants/hr-filter-inserter-remnants.png"
end

-- WIRES

if settings.startup["palette-cleanser-enable-thick-wires"].value then
    data.raw["utility-sprites"].default.copper_wire.filename = "__palettecleanser__/graphics/entity/signal-wire/copper-wire-thick.png"
    data.raw["utility-sprites"].default.copper_wire.hr_version.filename = "__palettecleanser__/graphics/entity/signal-wire/hr-copper-wire-thick.png"
    if settings.startup["palette-cleanser-signal-wire-mode"].value == choices.wire_mode.redblue then
        -- use thicker wires, and replace green with blue
        data.raw["item"]["green-wire"].icon ="__palettecleanser__/graphics/icons/blue-wire.png"
        data.raw["utility-sprites"].default.red_wire.filename = "__palettecleanser__/graphics/entity/signal-wire/entity/signal-wire/red-wire-thick.png"
        data.raw["utility-sprites"].default.red_wire.hr_version.filename = "__palettecleanser__/graphics/entity/signal-wire/hr-red-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.filename = "__palettecleanser__/graphics/entity/signal-wire/blue-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.hr_version.filename = "__palettecleanser__/graphics/entity/signal-wire/hr-blue-wire-thick.png"
    elseif settings.startup["palette-cleanser-signal-wire-mode"].value == choices.wire_mode.bluegreen then
        -- use thicker wires, and replace red with blue
        data.raw["item"]["red-wire"].icon ="__palettecleanser__/graphics/icons/blue-wire.png"
        data.raw["utility-sprites"].default.red_wire.filename = "__palettecleanser__/graphics/entity/signal-wire/blue-wire-thick.png"
        data.raw["utility-sprites"].default.red_wire.hr_version.filename = "__palettecleanser__/graphics/entity/signal-wire/hr-blue-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.filename = "__palettecleanser__/graphics/entity/signal-wire/green-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.hr_version.filename = "__palettecleanser__/graphics/entity/signal-wire/hr-green-wire-thick.png"
    else -- redgreen
        -- use thicker wires but don't change colors
        data.raw["utility-sprites"].default.red_wire.filename = "__palettecleanser__/graphics/entity/signal-wire/red-wire-thick.png"
        data.raw["utility-sprites"].default.red_wire.hr_version.filename = "__palettecleanser__/graphics/entity/signal-wire/hr-red-wire-thick.png"    
        data.raw["utility-sprites"].default.green_wire.filename = "__palettecleanser__/graphics/entity/signal-wire/green-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.hr_version.filename = "__palettecleanser__/graphics/entity/signal-wire/hr-green-wire-thick.png"
    end
else -- don't use thicker wires
    if settings.startup["palette-cleanser-signal-wire-mode"].value == choices.wire_mode.redblue then
        -- replace green with blue
        data.raw["item"]["green-wire"].icon ="__palettecleanser__/graphics/icons/blue-wire.png"
        data.raw["utility-sprites"].default.green_wire.filename = "__palettecleanser__/graphics/entity/signal-wire/blue-wire.png"
        data.raw["utility-sprites"].default.green_wire.hr_version.filename = "__palettecleanser__/graphics/entity/signal-wire/hr-blue-wire.png"
    elseif settings.startup["palette-cleanser-signal-wire-mode"].value == choices.wire_mode.bluegreen then
        -- replace red with blue
        data.raw["item"]["red-wire"].icon ="__palettecleanser__/graphics/icons/blue-wire.png"
        data.raw["utility-sprites"].default.red_wire.filename = "__palettecleanser__/graphics/entity/signal-wire/blue-wire.png"
        data.raw["utility-sprites"].default.red_wire.hr_version.filename = "__palettecleanser__/graphics/entity/signal-wire/hr-blue-wire.png"
    else -- redgreen
        -- don't change anything; use vanilla wires
    end
end

