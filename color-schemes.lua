return {
    deuteranopia = {

        --
        -- WELCOME POWER USERS!  If you'd like to try a few new colors, instead of editing this deuteranopia section,
        --   please feel free to edit the Custom section right below this one.  By default, it starts as a copy of the
        --   Deuteranopia settings.  If you find a few nice colors that work well for you, please consider sharing
        --   them with us on the mod portal, ESPECIALLY if you have protanopia (red deficiency) or tritanopia (blue
        --   deficiency).
        --
        -- On the other hand, if a certain color or overlay isn't working for you, we'd also appreciate you reporting
        --   it on the mod portal.  Together, we can maintain a working set of color palettes that benefit everybody.
        --
        -- Refer to the commented notes in the deuteranopia section for hints on color selections.
        --
        -- Be prepared to restart repeatedly as you audition colors.  Start a new save and use the editor and/or the
        --   Inifinity Mode mod to arrange resources and buildings so you can check colors quickly with minimal load
        --   times.  If you find any other game icons, items, or indicators that could use a color shift, let us know
        --   and we'll gladly try to find a solution.
        --
        --------------------
        --------------------
        -- WARNING: This feature is intended mainly for experimentation, and might not be saved during mod updates!
        --          If you find a few colors you like, make note of them so you don't lose your work!
        --------------------
        --------------------
        --
        -- Colors with a specified alpha value are influenced by the hue of the underlying color.  Alpha affects how
        -- much so.  The game often renders the resulting color in unexpected ways, so be prepared to experiment.
        --
        -- The author of this file is profoundly color deficient, so I've used internet-provided color names.
        -- 

        -- Some of these overlays will appear much lighter than the colors specified here; how much depends on the particular color.
        grenade_range_tint =                {r = 0.10, g = 0.10, b = 0.30, a = 0.15},  -- christalle violet
        turret_range_world_color =          {r = 0.10, g = 0.10, b = 0.30, a = 0.15},  -- christalle violet
        turret_range_chart_color =          {r = 0.25, g = 0.25, b = 0.80, a = 1.00},  -- free speech blue
        artillery_range_chart_color =       {r = 0.25, g = 0.25, b = 0.80, a = 1.00},  -- free speech blue
        roboport_logistic_range_color =     {r = 0.50, g = 0.00, b = 0.50, a = 1.00},  -- purple
        roboport_construction_range_color = {r = 0.00, g = 0.50, b = 0.50, a = 1.00},  -- teal

        elec_pole_small_area_color =      {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- royal blue
        elec_pole_medium_area_color =     {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- royal blue
        elec_pole_big_area_color =        {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- royal blue
        elec_pole_substation_area_color = {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- royal blue
        mining_drill_area_color =         {r = 0.31, g = 0.68, b = 0.62, a = 0.50},  -- sea nymph green

        -- These adjust the colors of the checkered indicators of resource patches as seen on the map and minimap.
        crude_oil_chart_color =  {r = 0.10, g = 0.60, b = 0.50},  -- elf green
        iron_ore_chart_color =   {r = 0.30, g = 0.45, b = 0.75},  -- steel blue
        copper_ore_chart_color = {r = 0.70, g = 0.45, b = 0.15},  -- pirate gold
        stone_chart_color =      {r = 0.60, g = 0.60, b = 0.60},  -- light grey

        -- Sand on the map can be distracting because the default color is so light; this section allows sandy beaches to blend in a bit better.
        --   These colors are about 10 K-values darker on the CMYK scale than vanilla sand, reversed in order, then
        --   adjusted to reduce the resulting greenish tint.  This should help them not stand out so much on dirt &
        --   grass maps, while hopefully not looking too out of place on desert maps.
        sand_1_chart_color =     {r = 0.39, g = 0.34, b = 0.27},  -- judge grey
        sand_2_chart_color =     {r = 0.41, g = 0.36, b = 0.28},  -- soya bean
        sand_3_chart_color =     {r = 0.43, g = 0.39, b = 0.31},  -- coffee

        -- The default cliff and tree colors can be terribly hard to distinguish on the map.
        cliff_chart_color =      {r = 0.93, g = 0.50, b = 0.75, a = 0.25},  -- illusion red
        tree_chart_color =       {r = 0.35, g = 0.85, b = 0.35, a = 0.25},  -- pastel green

        -- Each fluid has two colors - the base color is used in those little bar graphs in the GUI of refineries, chemical plants, flamethrowers, etc.
        -- Pipes and tanks also have little windows through which you can see the liquids flowing.  The base color is the main liquid color you'll see.
        -- The flow color represents the "bubbles" making their way along the pipes and tanks.
        --
        -- We also use the light_oil_base_color to set the tint of the light oil icon, as seen anywhere light oil is used. 
        petroleum_gas_base_color = { r = 0.90, g = 0.35, b = 0.60 }, -- dark pink
        petroleum_gas_flow_color = { r = 0.30, g = 0.10, b = 0.30 }, -- blackberry violet
        light_oil_base_color =     { r = 1.00, g = 0.85, b = 0.15 }, -- sunglow yellow
        light_oil_flow_color =     { r = 0.57, g = 0.33, b = 0.00 }, -- olive green
        sulfuric_acid_base_color = { r = 0.85, g = 0.05, b = 0.05 }, -- venetian red
        sulfuric_acid_flow_color = { r = 0.80, g = 0.80, b = 0.00 }, -- la rioja green
        lubricant_base_color =     { r = 0.43, g = 0.75, b = 0.31 }, -- mantis green
        lubricant_flow_color =     { r = 0.15, g = 0.32, b = 0.03 }, -- green
        
        -- For now, the following items look better as prerendered png files.  Maybe in the future we can figure out
        --    a better way to desaturate/retint these on the fly.
        -- active_provider_color = { r = 0.90, g = 0.30, b = 0.60 },  -- dark pink
        -- requester_color =       { r = 0.35, g = 0.35, b = 0.80 },  -- slate blue
        -- filter_inserter_color = { r = 0.90, g = 0.30, b = 0.60 },  -- dark pink

    },
    custom = {
        
        grenade_range_tint =                {r = 0.10, g = 0.10, b = 0.30, a = 0.15},  -- christalle violet
        turret_range_world_color =          {r = 0.10, g = 0.10, b = 0.30, a = 0.15},  -- christalle violet
        turret_range_chart_color =          {r = 0.25, g = 0.25, b = 0.80, a = 1.00},  -- free speech blue
        artillery_range_chart_color =       {r = 0.25, g = 0.25, b = 0.80, a = 1.00},  -- free speech blue
        roboport_logistic_range_color =     {r = 0.50, g = 0.00, b = 0.50, a = 1.00},  -- purple
        roboport_construction_range_color = {r = 0.00, g = 0.50, b = 0.50, a = 1.00},  -- teal

        elec_pole_small_area_color =      {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- royal blue
        elec_pole_medium_area_color =     {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- royal blue
        elec_pole_big_area_color =        {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- royal blue
        elec_pole_substation_area_color = {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- royal blue
        mining_drill_area_color =         {r = 0.31, g = 0.68, b = 0.62, a = 0.50},  -- sea nymph green

        crude_oil_chart_color =  {r = 0.10, g = 0.60, b = 0.50},  -- elf green
        iron_ore_chart_color =   {r = 0.30, g = 0.45, b = 0.75},  -- steel blue
        copper_ore_chart_color = {r = 0.70, g = 0.45, b = 0.15},  -- pirate gold
        stone_chart_color =      {r = 0.60, g = 0.60, b = 0.60},  -- light grey

        sand_1_chart_color =     {r = 0.39, g = 0.34, b = 0.27},  -- judge grey
        sand_2_chart_color =     {r = 0.41, g = 0.36, b = 0.28},  -- soya bean
        sand_3_chart_color =     {r = 0.43, g = 0.39, b = 0.31},  -- coffee
        cliff_chart_color =      {r = 0.30, g = 0.30, b = 0.40, a = 0.80},  -- cornflower blue

        petroleum_gas_base_color = { r = 0.90, g = 0.35, b = 0.60 }, -- dark pink
        petroleum_gas_flow_color = { r = 0.30, g = 0.10, b = 0.30 }, -- blackberry violet
        light_oil_base_color =     { r = 1.00, g = 0.85, b = 0.15 }, -- sunglow yellow
        light_oil_flow_color =     { r = 0.57, g = 0.33, b = 0.00 }, -- olive green
        sulfuric_acid_base_color = { r = 0.85, g = 0.05, b = 0.05 }, -- venetian red
        sulfuric_acid_flow_color = { r = 0.80, g = 0.80, b = 0.00 }, -- la rioja green
        lubricant_base_color =     { r = 0.43, g = 0.75, b = 0.31 }, -- mantis green
        lubricant_flow_color =     { r = 0.15, g = 0.32, b = 0.03 }, -- green

   },

}




