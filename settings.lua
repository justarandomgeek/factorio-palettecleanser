local function create_color_settings(name,defaultcolor)
  data:extend{
    {
      type = "string-setting",
      name = "palette-cleanser-"..name,
      setting_type = "startup",
      default_value = defaultcolor,
      order="palette-cleanser-"..name
    },
  }
end


create_color_settings("pollution","ff000099")
create_color_settings("roboport-construction","83d937a6")
create_color_settings("roboport-logistic","ff8800a6")

create_color_settings("turret-range","0d1a0d27")
create_color_settings("turret-range-chart","cd3f3fff")
create_color_settings("capsule-range","0d1a0d27")

create_color_settings("mining-drill-radius","4ead9fff")
create_color_settings("electric-pole-radius","4ead9fff")

data:extend{
  {
    type = "string-setting",
    name = "palette-cleanser-signal-wire-mode",
    setting_type = "startup",
    default_value = "redgreen",
    order="palette-cleanser-signal-wire-mode",
    allowed_values = {"redgreen", "redblue", "bluegreen"}
  },
}
