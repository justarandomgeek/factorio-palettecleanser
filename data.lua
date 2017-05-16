
local function read_color_settings(name)
  return
  {
    r = settings.startup["palette-cleanser-"..name.."-r"].value,
    g = settings.startup["palette-cleanser-"..name.."-g"].value,
    b = settings.startup["palette-cleanser-"..name.."-b"].value,
    a = settings.startup["palette-cleanser-"..name.."-a"].value
  }
end

data.raw["utility-constants"].default.turret_range_visualization_color = read_color_settings("turret-range")
data.raw["utility-constants"].default.chart.turret_range_color = read_color_settings("turret-range-chart")
data.raw["utility-constants"].default.capsule_range_visualization_color= read_color_settings("capsule-range")

data.raw["utility-sprites"].default.logistic_radius_visualization.filename = "__palettecleanser__/graphics/visualization-roboport-radius.png"
data.raw["utility-sprites"].default.logistic_radius_visualization.tint = read_color_settings("roboport-logistic")

data.raw["utility-sprites"].default.construction_radius_visualization.filename = "__palettecleanser__/graphics/visualization-roboport-radius.png"
data.raw["utility-sprites"].default.construction_radius_visualization.tint = read_color_settings("roboport-construction")

data.raw["utility-sprites"].default.pollution_visualization.filename = "__palettecleanser__/graphics/pollution-visualization.png"
data.raw["utility-sprites"].default.pollution_visualization.tint = read_color_settings("pollution")
