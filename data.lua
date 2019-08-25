local color_schemes = require('color-schemes')
local choices = require("choices")

pcgraphics = "__palettecleanser__/graphics"

-- READ MAIN COLOR SCHEME SETTING
if settings.startup["palette-cleanser-color-scheme"].value == choices.color_scheme.deuteranopia then
    active_scheme = color_schemes["deuteranopia"]
elseif settings.startup["palette-cleanser-color-scheme"].value == choices.color_scheme.custom then
    active_scheme = color_schemes["custom"]
end


-- OVERLAYS
-- --------


-- TURRETS AND GRENADES
if settings.startup["palette-cleanser-enable-turret-range"].value then
    -- Grenade radius in both world and map view
    data.raw["utility-constants"].default.capsule_range_visualization_color = active_scheme.grenade_range_tint
    -- Turret radius in world view
    data.raw["utility-constants"].default.turret_range_visualization_color = active_scheme.turret_range_world_color
    -- Turret radius in map view
    data.raw["utility-constants"].default.chart.turret_range_color = active_scheme.turret_range_chart_color
    -- Artillery radius (map view only)
    data.raw["utility-constants"].default.chart.artillery_range_color = active_scheme.artillery_range_chart_color
end

-- ROBOPORTS
if settings.startup["palette-cleanser-enable-roboport-area"].value then
    data.raw["utility-sprites"].default.logistic_radius_visualization.filename = pcgraphics.."/overlay/visualization-logistic-radius.png"
    data.raw["utility-sprites"].default.logistic_radius_visualization.tint = active_scheme.roboport_logistic_range_color
    data.raw["utility-sprites"].default.construction_radius_visualization.filename = pcgraphics.."/overlay/visualization-construction-radius.png"
    data.raw["utility-sprites"].default.construction_radius_visualization.tint = active_scheme.roboport_construction_range_color
end

-- POLLUTION
-- Disabled but maintained in case someone requests it
-- if settings.startup["palette-cleanser-enable-pollution-cloud"].value then
--     -- Pollution overlay might be okay in 0.17 since they increased color contrast; leaving commented code here for reference in case it's requested
--     data.raw["utility-sprites"].default.pollution_visualization.filename = pcgraphics.."/pollution-visualization.png"
--     data.raw["utility-sprites"].default.pollution_visualization.tint = active_scheme.pollution_cloud_color
-- end

-- ELECTRIC POLES AND MINING DRILLS
if settings.startup["palette-cleanser-enable-electric-pole-drill"].value then
    data.raw['electric-pole']['small-electric-pole'].radius_visualisation_picture.filename = pcgraphics.."/overlay/electric-pole-radius-visualization.png"
    data.raw['electric-pole']['small-electric-pole'].radius_visualisation_picture.tint = active_scheme.elec_pole_small_area_color
    data.raw['electric-pole']['medium-electric-pole'].radius_visualisation_picture.filename = pcgraphics.."/overlay/electric-pole-radius-visualization.png"
    data.raw['electric-pole']['medium-electric-pole'].radius_visualisation_picture.tint = active_scheme.elec_pole_medium_area_color
    data.raw['electric-pole']['big-electric-pole'].radius_visualisation_picture.filename = pcgraphics.."/overlay/electric-pole-radius-visualization.png"
    data.raw['electric-pole']['big-electric-pole'].radius_visualisation_picture.tint = active_scheme.elec_pole_big_area_color
    data.raw['electric-pole']['substation'].radius_visualisation_picture.filename = pcgraphics.."/overlay/electric-pole-radius-visualization.png"
    data.raw['electric-pole']['substation'].radius_visualisation_picture.tint = active_scheme.elec_pole_substation_area_color
    -- Mining Drill area overlay currently shifts off-center when specifying a PNG file.  Needs further debugging.
    -- For now, the tint effectively enhances mining drill area contrast.
    -- data.raw['mining-drill']['electric-mining-drill'].radius_visualisation_picture.filename = pcgraphics.."/electric-mining-drill-radius-visualization.png"
    data.raw['mining-drill']['electric-mining-drill'].radius_visualisation_picture.tint = active_scheme.mining_drill_area_color
end

-- MAP RESOURCE COLORS AND TERRAIN COLORS
if settings.startup["palette-cleanser-enable-resources-terrain"].value then
    data.raw["resource"]["crude-oil"].map_color = active_scheme.crude_oil_chart_color
    data.raw["resource"]["iron-ore"].map_color = active_scheme.iron_ore_chart_color
    data.raw["resource"]["copper-ore"].map_color = active_scheme.copper_ore_chart_color
    data.raw["resource"]["stone"].map_color = active_scheme.stone_chart_color
    data.raw.tile["sand-1"].map_color = active_scheme.sand_1_chart_color
    data.raw.tile["sand-2"].map_color = active_scheme.sand_2_chart_color
    data.raw.tile["sand-3"].map_color = active_scheme.sand_3_chart_color
    data.raw["cliff"]["cliff"].map_color = active_scheme.cliff_chart_color
    data.raw["utility-constants"].default.chart.default_color_by_type["tree"] = active_scheme.tree_chart_color
end


-- ITEMS & RECIPES
-- ---------------


-- FLUIDS

if settings.startup["palette-cleanser-enable-fluids"].value then
    -- Invert and/or adjust some fluid colors so they're easier to identify in pipes and tanks
    data.raw["fluid"]["petroleum-gas"].base_color = active_scheme.petroleum_gas_base_color
    data.raw["fluid"]["petroleum-gas"].flow_color = active_scheme.petroleum_gas_flow_color
    data.raw["fluid"]["light-oil"].base_color = active_scheme.light_oil_base_color
    data.raw["fluid"]["light-oil"].flow_color = active_scheme.light_oil_flow_color
    data.raw["fluid"]["sulfuric-acid"].base_color = active_scheme.sulfuric_acid_base_color
    data.raw["fluid"]["sulfuric-acid"].flow_color = active_scheme.sulfuric_acid_flow_color
    data.raw["fluid"]["lubricant"].base_color = active_scheme.lubricant_base_color
    data.raw["fluid"]["lubricant"].flow_color = active_scheme.lubricant_flow_color

    -- create dynamically tinted prototype icons for light oil, using the method described here:
    -- (https://forums.factorio.com/viewtopic.php?t=60558)
    -- barrelling icons are adjusted in data-updates.lua

    data.raw["fluid"]["light-oil"].icons = {
        {
            icon = pcgraphics.."/icons/generic-fluid.png",
            -- icon_size = 32, --might be mandatory
            tint = active_scheme.light_oil_base_color
        },

    }
    data.raw["recipe"]["heavy-oil-cracking"].icons = {
        {   
            -- Use a blank base for your icon to prevent scaling problems in crafting menu
            -- But don't make it blank - make it a small ~16px white oval with 1% alpha.
            -- Otherwise the icon won't have that nice dark alt-mode background
            -- on assembling machines and chemical plants.
            -- (https://forums.factorio.com/viewtopic.php?f=48&t=69221&start=20#p450447)
            
            icon = pcgraphics.."/icons/AlmostBlank32.png",
            icon_size = 32,
        },
        {
            icon = data.raw["fluid"]["heavy-oil"].icon,
            scale = 0.75,
            shift = {0,-4}
        },
        {
            icon = pcgraphics.."/icons/generic-fluid.png",
            tint = active_scheme.light_oil_base_color,
            scale = 0.5,
            shift = {-10,8}
        },
        {
            icon = pcgraphics.."/icons/generic-fluid.png",
            tint = active_scheme.light_oil_base_color,
            scale = 0.5,
            shift = {10,8}
        }
    }
    data.raw["recipe"]["light-oil-cracking"].icons = {
        {
            icon = pcgraphics.."/icons/AlmostBlank32.png",
            icon_size = 32,
        },
        {
            icon = pcgraphics.."/icons/generic-fluid.png",
            tint = active_scheme.light_oil_base_color,
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
            icon = pcgraphics.."/icons/generic-fluid.png",
            tint = active_scheme.light_oil_base_color,
            scale = 0.75,
            shift = {9,5}
        }
    }
    
end

-- AMMO
if settings.startup["palette-cleanser-enable-ammo"].value then
    data.raw["ammo"]["explosive-cannon-shell"].icon = pcgraphics.."/icons/explosive-cannon-shell.png"
    data.raw["ammo"]["explosive-uranium-cannon-shell"].icon = pcgraphics.."/icons/explosive-uranium-cannon-shell.png"
    data.raw["capsule"]["cluster-grenade"].icon = pcgraphics.."/icons/cluster-grenade.png"
    data.raw["projectile"]["cluster-grenade"].animation.filename = pcgraphics.."/icons/cluster-grenade.png"
end

-- CIRCUITS
if settings.startup["palette-cleanser-enable-circuits"].value then
    data.raw["item"]["electronic-circuit"].icon = pcgraphics.."/icons/electronic-circuit.png"
    data.raw["item"]["advanced-circuit"].icon = pcgraphics.."/icons/advanced-circuit.png"
    data.raw["item"]["processing-unit"].icon = pcgraphics.."/icons/processing-unit.png"
end

-- LOGISTICS
-- For now the following items look better as prerendered png files.  Maybe in the future we can figure out a better way to desaturate/retint these on the fly.
if settings.startup["palette-cleanser-enable-logistics"].value then
    -- Active Provider Chest --> pink
    -- Requester Chest --> deep blue
    -- Filter inserter --> pink

    data.raw["item"]["logistic-chest-active-provider"].icon = pcgraphics.."/icons/logistic-chest-active-provider.png"
    data.raw["logistic-container"]["logistic-chest-active-provider"].icon = pcgraphics.."/icons/logistic-chest-active-provider.png"
    data.raw["logistic-container"]["logistic-chest-active-provider"].animation.layers[1].filename =pcgraphics.."/entity/logistic-chest/logistic-chest-active-provider.png"
    data.raw["logistic-container"]["logistic-chest-active-provider"].animation.layers[1].hr_version.filename =pcgraphics.."/entity/logistic-chest/hr-logistic-chest-active-provider.png"

    data.raw["item"]["logistic-chest-requester"].icon = pcgraphics.."/icons/logistic-chest-requester.png"
    data.raw["logistic-container"]["logistic-chest-requester"].icon = pcgraphics.."/icons/logistic-chest-requester.png"
    data.raw["logistic-container"]["logistic-chest-requester"].animation.layers[1].filename =pcgraphics.."/entity/logistic-chest/logistic-chest-requester.png"
    data.raw["logistic-container"]["logistic-chest-requester"].animation.layers[1].hr_version.filename =pcgraphics.."/entity/logistic-chest/hr-logistic-chest-requester.png"

    data.raw["item"]["filter-inserter"].icon = pcgraphics.."/icons/filter-inserter.png"
    data.raw["inserter"]["filter-inserter"].icon = pcgraphics.."/icons/filter-inserter.png"
    data.raw["inserter"]["filter-inserter"].hand_base_picture.filename =pcgraphics.."/entity/filter-inserter/filter-inserter-hand-base.png"
    data.raw["inserter"]["filter-inserter"].hand_base_picture.hr_version.filename =pcgraphics.."/entity/filter-inserter/hr-filter-inserter-hand-base.png"
    data.raw["inserter"]["filter-inserter"].hand_closed_picture.filename =pcgraphics.."/entity/filter-inserter/filter-inserter-hand-closed.png"
    data.raw["inserter"]["filter-inserter"].hand_closed_picture.hr_version.filename =pcgraphics.."/entity/filter-inserter/hr-filter-inserter-hand-closed.png"
    data.raw["inserter"]["filter-inserter"].hand_open_picture.filename =pcgraphics.."/entity/filter-inserter/filter-inserter-hand-open.png"
    data.raw["inserter"]["filter-inserter"].hand_open_picture.hr_version.filename =pcgraphics.."/entity/filter-inserter/hr-filter-inserter-hand-open.png"
    data.raw["inserter"]["filter-inserter"].platform_picture.sheet.filename =pcgraphics.."/entity/filter-inserter/filter-inserter-platform.png"
    data.raw["inserter"]["filter-inserter"].platform_picture.sheet.hr_version.filename =pcgraphics.."/entity/filter-inserter/hr-filter-inserter-platform.png"
    -- Filter-inserter-remnants implementation needs further debugging.  For now, they'll simply turn purple when destroyed. :)
    -- data.raw["corpse"]["filter-inserter-remnants"].animation.filename =pcgraphics.."/entity/filter-inserter/remnants/filter-inserter-remnants.png"
    -- data.raw["corpse"]["filter-inserter-remnants"].animation.hr_version.filename =pcgraphics.."/entity/filter-inserter/remnants/hr-filter-inserter-remnants.png"
end

-- WIRES

if settings.startup["palette-cleanser-enable-thick-wires"].value then
    data.raw["utility-sprites"].default.copper_wire.filename = pcgraphics.."/entity/signal-wire/copper-wire-thick.png"
    data.raw["utility-sprites"].default.copper_wire.hr_version.filename = pcgraphics.."/entity/signal-wire/hr-copper-wire-thick.png"
    if settings.startup["palette-cleanser-signal-wire-mode"].value == choices.wire_mode.redblue then
        -- use thicker wires, and replace green with blue
        data.raw["item"]["green-wire"].icon =pcgraphics.."/icons/blue-wire.png"
        data.raw["utility-sprites"].default.red_wire.filename = pcgraphics.."/entity/signal-wire/entity/signal-wire/red-wire-thick.png"
        data.raw["utility-sprites"].default.red_wire.hr_version.filename = pcgraphics.."/entity/signal-wire/hr-red-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.filename = pcgraphics.."/entity/signal-wire/blue-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.hr_version.filename = pcgraphics.."/entity/signal-wire/hr-blue-wire-thick.png"
    elseif settings.startup["palette-cleanser-signal-wire-mode"].value == choices.wire_mode.bluegreen then
        -- use thicker wires, and replace red with blue
        data.raw["item"]["red-wire"].icon =pcgraphics.."/icons/blue-wire.png"
        data.raw["utility-sprites"].default.red_wire.filename = pcgraphics.."/entity/signal-wire/blue-wire-thick.png"
        data.raw["utility-sprites"].default.red_wire.hr_version.filename = pcgraphics.."/entity/signal-wire/hr-blue-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.filename = pcgraphics.."/entity/signal-wire/green-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.hr_version.filename = pcgraphics.."/entity/signal-wire/hr-green-wire-thick.png"
    else -- redgreen
        -- use thicker wires but don't change colors
        data.raw["utility-sprites"].default.red_wire.filename = pcgraphics.."/entity/signal-wire/red-wire-thick.png"
        data.raw["utility-sprites"].default.red_wire.hr_version.filename = pcgraphics.."/entity/signal-wire/hr-red-wire-thick.png"    
        data.raw["utility-sprites"].default.green_wire.filename = pcgraphics.."/entity/signal-wire/green-wire-thick.png"
        data.raw["utility-sprites"].default.green_wire.hr_version.filename = pcgraphics.."/entity/signal-wire/hr-green-wire-thick.png"
    end
else -- don't use thicker wires
    if settings.startup["palette-cleanser-signal-wire-mode"].value == choices.wire_mode.redblue then
        -- replace green with blue
        data.raw["item"]["green-wire"].icon =pcgraphics.."/icons/blue-wire.png"
        data.raw["utility-sprites"].default.green_wire.filename = pcgraphics.."/entity/signal-wire/blue-wire.png"
        data.raw["utility-sprites"].default.green_wire.hr_version.filename = pcgraphics.."/entity/signal-wire/hr-blue-wire.png"
    elseif settings.startup["palette-cleanser-signal-wire-mode"].value == choices.wire_mode.bluegreen then
        -- replace red with blue
        data.raw["item"]["red-wire"].icon =pcgraphics.."/icons/blue-wire.png"
        data.raw["utility-sprites"].default.red_wire.filename = pcgraphics.."/entity/signal-wire/blue-wire.png"
        data.raw["utility-sprites"].default.red_wire.hr_version.filename = pcgraphics.."/entity/signal-wire/hr-blue-wire.png"
    else -- redgreen
        -- don't change anything; use vanilla wires
    end
end



-- Listen for hotkey; run on_event function in control.lua to force map rechart
data:extend(
	{
		{
			type = "custom-input",
			name = "palette-cleanser-force-map-rechart",
			key_sequence = "CONTROL + M",
			consuming = "script-only"
		},
	}
)
