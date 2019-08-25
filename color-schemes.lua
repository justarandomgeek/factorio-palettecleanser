local color = util.color

return {
    deuteranopia = {

        -------------------------------
        -- COLOR SCHEME INSTRUCTIONS --
        -------------------------------
        --
        -- WELCOME POWER USERS!  If you'd like to try a few new colors, instead of editing this
        --   deuteranopia section, please feel free to edit the Custom section right below this
        --   one.  By default, it starts as a copy of the Deuteranopia settings.  If you find a
        --   few nice colors that work well for you, please consider sharing them with us on the
        --   mod portal, ESPECIALLY if you have protanopia (red deficiency) or tritanopia (blue
        --   deficiency), which are less common.
        --
        -- On the other hand, if a certain color or overlay isn't working for you, we'd also
        --   appreciate you reporting it on the mod portal.  Together, we can maintain a working
        --   set of color palettes that benefit everybody.
        --
        -- Refer to the commented notes in the deuteranopia section for hints on color selections.
        --
        -- Be prepared to restart repeatedly as you audition colors.  Start a new save and use the
        --   editor and/or the Infinity Mode mod to arrange resources and buildings so you can
        --   check colors quickly with minimal load times.  If you find any other game icons,
        --   items, or indicators that could use a color shift, let us know and we'll gladly try
        --   to find a solution.
        --
        --------------------
        --------------------
        -- WARNING: This feature is intended mainly for experimentation, and might not be saved
        --          during mod updates!  If you find a few colors you like, save a backup copy
        --          so you don't lose your work!
        --------------------
        --------------------
        --
        -- Colors are input as hex codes, the most popular way to communicate color information.
        --   Some of these hex codes are 8 digits instead of the typical 6.  The last 2 digits
        --   simply contain the alpha channel (transparency value).  You can always just use the
        --   first six digits of any of these hex codes to see the color it represents.
        --
        -- Colors with a specified alpha value are influenced by the hue of the underlying color.
        --   Alpha affects how much so.  The game often renders the resulting color in unexpected
        --   ways, so be prepared to experiment.
        --
        -- Just replace any 6- or 8-digit code with the color you'd like to try.  You may want to
        --   copy the existing color code just so you have a reference to start your adjustments
        --   from.  Also, if you know the color name, you can type it after the -- comment marker
        --   as shown in the examples.
        --
        -- The author of this file is profoundly color deficient, so I've used internet-provided
        --   color names.
        -- 

        

        -- Some of these overlays will appear much lighter than the colors specified here; how
        --   much depends on the particular color.
        grenade_range_tint =                    color("#19194C26"),  -- christalle violet
        turret_range_world_color =              color("#19194C26"),  -- christalle violet
        turret_range_chart_color =              color("#3F3FCCFF"),  -- free speech blue
        artillery_range_chart_color =           color("#3F3FCCFF"),  -- free speech blue
        roboport_logistic_range_color =         color("#7F007FFF"),  -- purple
        roboport_construction_range_color =     color("#007F7FFF"),  -- teal

        elec_pole_small_area_color =            color("#3359D87F"),  -- royal blue
        elec_pole_medium_area_color =           color("#3359D87F"),  -- royal blue
        elec_pole_big_area_color =              color("#3359D87F"),  -- royal blue
        elec_pole_substation_area_color =       color("#3359D87F"),  -- royal blue
        mining_drill_area_color =               color("#4FAD9E7F"),  -- sea nymph green

        -- These adjust the colors of the checkered indicators of resource patches as seen on the
        --   map and minimap.
        crude_oil_chart_color =                 color("#19997F"),    -- elf green
        iron_ore_chart_color =                  color("#4C72BF"),    -- steel blue
        copper_ore_chart_color =                color("#B27226"),    -- pirate gold
        stone_chart_color =                     color("#999999"),    -- light grey

        -- Sand on the map can be distracting because the default color is so light; thissection
        --   allows sandy beaches to blend in a bit better. These colors are about 10 K-values
        --   darker on the CMYK scale than vanilla sand, reversed in order, then adjusted to
        --   reduce the resulting greenish tint.  This should help them not stand out so much on
        --   dirt & grass maps, while hopefully not looking too out of place on desert maps.
        sand_1_chart_color =                    color("#635644"),    -- judge grey
        sand_2_chart_color =                    color("#685B47"),    -- soya bean
        sand_3_chart_color =                    color("#6D634F"),    -- coffee

        -- The default cliff and tree colors can be terribly hard to distinguish on the map.
        cliff_chart_color =                     color("#ED7FBF3F"),  -- illusion red
        tree_chart_color =                      color("#59D8593F"),  -- pastel green

        -- Each fluid has two colors - the base color is used in those little bar graphs in the
        --   GUI of refineries, chemical plants, flamethrowers, etc.  Pipes and tanks also have
        --   little windows through which you can see the liquids flowing.  The base color is the
        --   main liquid color you'll see.  The flow color represents the "bubbles" making their
        --   way along the pipes and tanks.
        --
        -- We also use the light_oil_base_color to set the tint of the light oil icon, as seen
        --   anywhere light oil is used. 
        petroleum_gas_base_color =              color("#E55999"),    -- dark pink
        petroleum_gas_flow_color =              color("#4C194C"),    -- blackberry violet
        light_oil_base_color =                  color("#FFD826"),    -- sunglow yellow
        light_oil_flow_color =                  color("#915400"),    -- olive green
        sulfuric_acid_base_color =              color("#D80C0C"),    -- venetian red
        sulfuric_acid_flow_color =              color("#CCCC00"),    -- la rioja green
        lubricant_base_color =                  color("#6DBF4F"),    -- mantis green
        lubricant_flow_color =                  color("#265107"),    -- green
        
        -- For now, the following items look better as prerendered png files.  Maybe in the
        --    future we can figure out a better way to desaturate/retint these on the fly.
        -- active_provider_color = {} -- dark pink
        -- requester_color =       {} -- slate blue
        -- filter_inserter_color = {} -- dark pink

    },
    custom = {
        
        grenade_range_tint =                    color("#19194C26"),  -- christalle violet
        turret_range_world_color =              color("#19194C26"),  -- christalle violet
        turret_range_chart_color =              color("#3F3FCCFF"),  -- free speech blue
        artillery_range_chart_color =           color("#3F3FCCFF"),  -- free speech blue
        roboport_logistic_range_color =         color("#7F007FFF"),  -- purple
        roboport_construction_range_color =     color("#007F7FFF"),  -- teal

        elec_pole_small_area_color =            color("#3359D87F"),  -- royal blue
        elec_pole_medium_area_color =           color("#3359D87F"),  -- royal blue
        elec_pole_big_area_color =              color("#3359D87F"),  -- royal blue
        elec_pole_substation_area_color =       color("#3359D87F"),  -- royal blue
        mining_drill_area_color =               color("#4FAD9E7F"),  -- sea nymph green

        crude_oil_chart_color =                 color("#19997F"),    -- elf green
        iron_ore_chart_color =                  color("#4C72BF"),    -- steel blue
        copper_ore_chart_color =                color("#B27226"),    -- pirate gold
        stone_chart_color =                     color("#999999"),    -- light grey

        sand_1_chart_color =                    color("#635644"),    -- judge grey
        sand_2_chart_color =                    color("#685B47"),    -- soya bean
        sand_3_chart_color =                    color("#6D634F"),    -- coffee

        cliff_chart_color =                     color("#ED7FBF3F"),  -- illusion red
        tree_chart_color =                      color("#59D8593F"),  -- pastel green

        petroleum_gas_base_color =              color("#E55999"),    -- dark pink
        petroleum_gas_flow_color =              color("#4C194C"),    -- blackberry violet
        light_oil_base_color =                  color("#FFD826"),    -- sunglow yellow
        light_oil_flow_color =                  color("#915400"),    -- olive green
        sulfuric_acid_base_color =              color("#D80C0C"),    -- venetian red
        sulfuric_acid_flow_color =              color("#CCCC00"),    -- la rioja green
        lubricant_base_color =                  color("#6DBF4F"),    -- mantis green
        lubricant_flow_color =                  color("#265107"),    -- green

   },

}
