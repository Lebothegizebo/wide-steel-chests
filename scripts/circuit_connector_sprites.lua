circuit_connector_definitions["wide_container"] = circuit_connector_definitions.create_single
(
  universal_connector_template,
    { variation = 26, main_offset = util.by_pixel(18, 5.5), shadow_offset = util.by_pixel(18+4.5, 5.5+2), show_shadow = true }
)
circuit_connector_definitions["tall_container"] = circuit_connector_definitions.create_single
(
  universal_connector_template,
    { variation = 26, main_offset = util.by_pixel(3, 21.5), shadow_offset = util.by_pixel(3+4.5, 21.5+2), show_shadow = true }
)
