return {
    deuteranopia = {

        --
        -- WELCOME POWER USERS!  If you'd like to try a few new colors, instead of editing this deuteranopia section, please feel free to edit the Custom section
        -- right below this one.  By default, it starts as a copy of the Deuteranopia settings.  If you find a few nice colors that work well for you, please consider sharing
        -- them with us on the mod portal, ESPECIALLY if you have protanopia (red deficiency) or tritanopia (blue deficiency).
        --
        -- On the other hand, if a certain color or overlay isn't working for you, we'd also appreciate you reporting it on the mod portal.  Together, we can maintain a working
        -- default color palette that benefits everybody.
        --
        --------------------
        --------------------
        -- WARNING: This feature is intended mainly for color experimentation, and might not be saved during mod updates!
        --          If you find a few colors you like, make note of them so you don't lose your work!
        --------------------
        --------------------

        grenade_range_tint =                {r = 0.10, g = 0.10, b = 0.30, a = 0.15},  -- appears as a light blue circle
        turret_range_world_color =          {r = 0.10, g = 0.10, b = 0.30, a = 0.15},  -- also appears as a light blue circle
        turret_range_chart_color =          {r = 0.25, g = 0.25, b = 0.80, a = 1.00},  -- a more solid-colored blue range overlay for the map
        artillery_range_chart_color =       {r = 0.25, g = 0.25, b = 0.80, a = 1.00},  -- appears as a very lightly shaded blue circle on the map
        roboport_logistic_range_color =     {r = 0.50, g = 0.00, b = 0.50, a = 1.00},  -- magenta
        roboport_construction_range_color = {r = 0.00, g = 0.50, b = 0.50, a = 1.00},  -- teal

        elec_pole_small_area_color =      {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- bright green square for active placement, muted green square for already placed poles.
        elec_pole_medium_area_color =     {r = 0.20, g = 0.35, b = 0.85, a = 0.50},
        elec_pole_big_area_color =        {r = 0.20, g = 0.35, b = 0.85, a = 0.50},
        elec_pole_substation_area_color = {r = 0.20, g = 0.35, b = 0.85, a = 0.50},
        mining_drill_area_color =         {r = 0.31, g = 0.68, b = 0.62, a = 0.50},  -- bright green yet still quite transparent area overlay

        crude_oil_chart_color =  {r = 0.10, g = 0.60, b = 0.50},  -- mid-teal color
        iron_ore_chart_color =   {r = 0.30, g = 0.45, b = 0.75},  -- light blue
        copper_ore_chart_color = {r = 0.70, g = 0.45, b = 0.15},  -- reddish orange
        stone_chart_color =      {r = 0.60, g = 0.60, b = 0.60},  -- granite grey
        sand_1_chart_color =     {r = 0.39, g = 0.34, b = 0.27},  -- These colors are about 10 K-values darker on the CMYK scale than vanilla sand, reversed in order,
        sand_2_chart_color =     {r = 0.41, g = 0.36, b = 0.28},  --   then adjusted to reduce the resulting greenish tint.  This should help them not stand out so
        sand_3_chart_color =     {r = 0.43, g = 0.39, b = 0.31},  --   much on dirt/grass maps, while hopefully not looking too out of place on desert maps.

        petroleum_gas_base_color = { r = 0.90, g = 0.35, b = 0.60 }, -- pink
        petroleum_gas_flow_color = { r = 0.30, g = 0.10, b = 0.30 }, -- dark purple
        light_oil_base_color =     { r = 1.00, g = 0.85, b = 0.15 }, -- yellow
        light_oil_flow_color =     { r = 0.57, g = 0.33, b = 0.00 }, -- dark orange
        sulfuric_acid_base_color = { r = 0.85, g = 0.05, b = 0.05 }, -- red
        sulfuric_acid_flow_color = { r = 0.80, g = 0.80, b = 0.00 }, -- yellow
        lubricant_base_color =     { r = 0.43, g = 0.75, b = 0.31 }, -- light green
        lubricant_flow_color =     { r = 0.15, g = 0.32, b = 0.03 }, -- dark green
        
        -- For now the following items look better as prerendered png files.  Maybe in the future we can figure out a better way to desaturate/retint these on the fly.
        -- active_provider_color = { r = 0.90, g = 0.30, b = 0.60 },
        -- requester_color =       { r = 0.35, g = 0.35, b = 0.80 },
        -- filter_inserter_color = { r = 0.90, g = 0.30, b = 0.60 },

    },
    custom = {

        -- Be prepared to restart repeatedly as you audition colors.  Start a new save and use the editor or Inifinity Mode mod so you can check colors quickly with
        -- minimal load times.  If you find any other game icons, items, or indicators that could use a color shift, let us know and we'll gladly find a solution!
        
        -- Overlay colors in particular are tricky - changes don't always work the way you might expect them to...  The best way to learn is experimentation.
        -- However, if you have any questions, we'd be happy to help.  Just let us know on the mod portal Discussion page.

        grenade_range_tint =                {r = 0.10, g = 0.10, b = 0.30, a = 0.15},  -- appears as a light blue circle
        turret_range_world_color =          {r = 0.10, g = 0.10, b = 0.30, a = 0.15},  -- also appears as a light blue circle
        turret_range_chart_color =          {r = 0.25, g = 0.25, b = 0.80, a = 1.00},  -- a more solid-colored blue range overlay for the map
        artillery_range_chart_color =       {r = 0.25, g = 0.25, b = 0.80, a = 1.00},  -- appears as a very lightly shaded blue circle on the map
        roboport_logistic_range_color =     {r = 0.50, g = 0.00, b = 0.50, a = 1.00},  -- magenta
        roboport_construction_range_color = {r = 0.00, g = 0.50, b = 0.50, a = 1.00},  -- teal

        elec_pole_small_area_color =      {r = 0.20, g = 0.35, b = 0.85, a = 0.50},  -- bright green square for active placement, muted green square for already placed poles.
        elec_pole_medium_area_color =     {r = 0.20, g = 0.35, b = 0.85, a = 0.50},
        elec_pole_big_area_color =        {r = 0.20, g = 0.35, b = 0.85, a = 0.50},
        elec_pole_substation_area_color = {r = 0.20, g = 0.35, b = 0.85, a = 0.50},
        mining_drill_area_color =         {r = 0.31, g = 0.68, b = 0.62, a = 0.50},  -- bright green yet still quite transparent area overlay

        -- These adjust the colors of the checkered indicators of resource patches as seen on the map and minimap.
        crude_oil_chart_color =  {r = 0.10, g = 0.60, b = 0.50},  -- mid-teal color
        iron_ore_chart_color =   {r = 0.30, g = 0.45, b = 0.75},  -- light blue
        copper_ore_chart_color = {r = 0.70, g = 0.45, b = 0.15},  -- reddish orange
        stone_chart_color =      {r = 0.60, g = 0.60, b = 0.60},  -- granite grey

        -- Sand on the map can be distracting because the default color is so light; I added these map terrain colors to force sandy beaches to blend in a bit better.
        sand_1_chart_color =     {r = 0.35, g = 0.15, b = 0.25},  -- The map usually adds some extra green to this setting.  These should be various shades of mid-dark brown.
        sand_2_chart_color =     {r = 0.35, g = 0.10, b = 0.20},
        sand_3_chart_color =     {r = 0.30, g = 0.15, b = 0.15},

        -- Each fluid has two colors - the base color is used in those little bar graphs in the GUI of refineries, chemical plants, flamethrowers, etc.
        -- Pipes and tanks also have little windows through which you can see the liquids flowing.  The base color is the main liquid color you'll see.
        -- The flow color represents the "bubbles" making their way along the pipes and tanks.
        --
        -- We also use the light_oil_base_color to set the tint of the light oil icon, as seen anywhere light oil is used. 
        petroleum_gas_base_color = { r = 0.90, g = 0.35, b = 0.60 }, -- pink
        petroleum_gas_flow_color = { r = 0.30, g = 0.10, b = 0.30 }, -- dark purple
        light_oil_base_color =     { r = 1.00, g = 0.73, b = 0.07 }, -- yellow
        light_oil_flow_color =     { r = 0.57, g = 0.33, b = 0.00 }, -- dark orange
        sulfuric_acid_base_color = { r = 0.85, g = 0.05, b = 0.05 }, -- red
        sulfuric_acid_flow_color = { r = 0.80, g = 0.80, b = 0.00 }, -- yellow
        lubricant_base_color =     { r = 0.43, g = 0.75, b = 0.31 }, -- light green
        lubricant_flow_color =     { r = 0.15, g = 0.32, b = 0.03 }, -- dark green

   },

}




