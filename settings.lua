local function create_color_settings(name,defaultcolor)
  data:extend{
    {
      type = "double-setting",
      name = "palette-cleanser-"..name.."-r",
      setting_type = "startup",
      default_value = defaultcolor.r,
      minimum_value = 0,
      maximum_value = 1,
      order="palette-cleanser-"..name.."-1r"
    },
    {
      type = "double-setting",
      name = "palette-cleanser-"..name.."-g",
      setting_type = "startup",
      default_value = defaultcolor.g,
      minimum_value = 0,
      maximum_value = 1,
      order="palette-cleanser-"..name.."-2g"
    },
    {
      type = "double-setting",
      name = "palette-cleanser-"..name.."-b",
      setting_type = "startup",
      default_value = defaultcolor.b,
      minimum_value = 0,
      maximum_value = 1,
      order="palette-cleanser-"..name.."-3b"
    },
    {
      type = "double-setting",
      name = "palette-cleanser-"..name.."-a",
      setting_type = "startup",
      default_value = defaultcolor.a,
      minimum_value = 0,
      maximum_value = 1,
      order="palette-cleanser-"..name.."-4a"
    },
  }
end


create_color_settings("pollution",{r=0.953125,g=0,b=0,a=0.58984375})
create_color_settings("roboport-construction",{r=0.51171875,g=0.84765625,b=0.21484375,a=0.65})
create_color_settings("roboport-logistic",{r=1,g=0.53125,b=0,a=0.65})

create_color_settings("turret-range",{ r = 0.05, g = 0.1, b = 0.05, a = 0.15 })
create_color_settings("turret-range-chart",{r = 0.8, g = 0.25, b = 0.25, a = 1})
create_color_settings("capsule-range",{ r = 0.05, g = 0.1, b = 0.05, a = 0.15 })

create_color_settings("mining-drill-radius",{ r = 0.3046845, g = 0.67578125, b = 0.62109375, a = 1 })
create_color_settings("electric-pole-radius",{ r = 0.3046845, g = 0.67578125, b = 0.62109375, a = 1 })
