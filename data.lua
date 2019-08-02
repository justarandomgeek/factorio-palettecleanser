
local function read_color_settings(name)
  return settings.startup["palette-cleanser-"..name].value
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

data.raw['mining-drill']['electric-mining-drill'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/electric-mining-drill-radius-visualization.png"
data.raw['mining-drill']['electric-mining-drill'].radius_visualisation_picture.tint = read_color_settings("mining-drill-radius")

data.raw['electric-pole']['small-electric-pole'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/electric-pole-radius-visualization.png"
data.raw['electric-pole']['small-electric-pole'].radius_visualisation_picture.tint = read_color_settings("electric-pole-radius")

data.raw['electric-pole']['medium-electric-pole'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/electric-pole-radius-visualization.png"
data.raw['electric-pole']['medium-electric-pole'].radius_visualisation_picture.tint = read_color_settings("electric-pole-radius")

data.raw['electric-pole']['big-electric-pole'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/electric-pole-radius-visualization.png"
data.raw['electric-pole']['big-electric-pole'].radius_visualisation_picture.tint = read_color_settings("electric-pole-radius")

data.raw['electric-pole']['substation'].radius_visualisation_picture.filename = "__palettecleanser__/graphics/electric-pole-radius-visualization.png"
data.raw['electric-pole']['substation'].radius_visualisation_picture.tint = read_color_settings("electric-pole-radius")

if settings.startup["palette-cleanser-signal-wire-mode"].value == "redblue" then
  -- change green to blue
  data.raw["utility-sprites"].default.green_wire.filename = "__palettecleanser__/graphics/blue-wire.png"
elseif settings.startup["palette-cleanser-signal-wire-mode"].value == "bluegreen" then 
  -- change red to blue
  data.raw["utility-sprites"].default.red_wire.filename = "__palettecleanser__/graphics/blue-wire.png"
end
