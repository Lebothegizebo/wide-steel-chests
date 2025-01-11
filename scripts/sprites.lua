-- Generates Defintions for wide-chest prototypes
circuit_connector_definitions["wide-container"] = circuit_connector_definitions.create
(
  universal_connector_template,
  {
    { variation = 26, main_offset = util.by_pixel(18, 5.5), shadow_offset = util.by_pixel(22.5, 7.5), show_shadow = true }
  }
)
circuit_connector_definitions["tall-container"] = circuit_connector_definitions.create
(
  universal_connector_template,
  {
    { variation = 26, main_offset = util.by_pixel(3, 21.5), shadow_offset = util.by_pixel(3+4.5, 21.5+2), show_shadow = true }
  }
)
