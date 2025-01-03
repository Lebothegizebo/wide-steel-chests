-- unused
require("__base__/prototypes/factoriopedia-util");
local simulations = {}
simulations.factoriopedia_wide_wooden_chest =
{
  init =
  [[
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_zoom = 1.8
    local player = game.simulation.create_test_player{name="test"}
    player.character.destroy()
    game.surfaces[1].create_entities_from_blueprint_string{
      string = "0eNqVkdsKwyAMht8l13bQrpbVVxlj2DZ0gTYOdSeK7z5td4DtYuxS4/d/JpmgGU54tMQe1ATUGnagthM46lkP6Y71iKDgQh1mF2M65Kw9oPMQBBB3eAWVh50AZE+ecMHnw23Pp7FBGx+IZ4w1XnvdDB9ZAo7GRdxwUsbIjYAbqCyvVjJ6vO5dKqRP7BdCTSEE8WUq/jZFw8OVTB1ZbJdq+Y93/fL+6OtlK2NnaW7kcYzYew8CzmjdjMiqqMu6lrKQ1brIQ7gDAa6QOA==",
      position = {0, 0},
      by_player = player,
    }
  ]],
  mods = {
    "wide-steel-chests",
  },
}
simulations.factoriopedia_wide_iron_chest =
{
  init =
  [[
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_zoom = 1.8
    local player = game.simulation.create_test_player{name="test"}
    player.character.destroy()
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqVkdsKwjAMht8l1524ug7WVxGRbgsa2FJp64nRd7d1HhBB8LJNv/9rkgna4YgHRxxAT0CdZQ96PYGnHZsh37EZETScqceCnOWi26MPEAUQ93gBXcaNAORAgXCG74frlo9jiy49EM8QZ4MJph0+kgQcrE+w5azLgVLAFXRR1guVNMHsfK7kH2xnRE8xRvElkv+Klgv1UGVRTw67uVz9o129tL+7esmq1FceGgUcE/VegYATOn9nVC2bqmmUkqpeyTLGGzj6jWk=",
      position = {0, 0},
      by_player = player,
    }
  ]],
  mods = {
    "wide-steel-chests",
  },
}
simulations.factoriopedia_wide_steel_chest =
{
  init =
  [[
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_zoom = 1.8
    local player = game.simulation.create_test_player{name="test"}
    player.character.destroy()
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqVkdsKgzAMht8l13XgoYJ9lTFG1bAFtEobd0D67mvn5hi7GF626fd/aTJD3U04WjIMagZqBuNA7WdwdDK6i3dG9wgKrtRi4hixS5ozOgYvgEyLN1CpPwhAw8SEC/083I9m6mu04YF4p9iBNeu6+44SMA4u0IOJwphYCriDStJyJ4OH9cnFSuzhuCBq9t6LH1O22VTs5MsVTS1ZbJZyscWbr94//1ptwevj3IixD9hnDQIuaN2TkWVWFVUlZSbLPEu9fwDBQ48J",
      position = {0, 0},
      by_player = player,
    }
  ]],
  mods = {
    "wide-steel-chests",
  },
}
simulations.factoriopedia_wide_active_provider_chest =
{
  init =
  [[
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_zoom = 1.8
    local player = game.simulation.create_test_player{name="test"}
    player.character.destroy()
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqdkdFuwjAMRf/FzylaU1Kt+RWEUNpaYKlNqsQUUJV/J6Ebe0CTNh5t595zHS/QDmecPFkGvQB1zgbQuwUCHa0Zcs+aEUHDhXosTMc0YzF5N6fSF90JA0MUQLbHK+gy7gWgZWLC1edR3A72PLbo0wPx7ecdGzbt8JupgMmF5ONsDpG8PwXcQBel3KgEZHMMeZBjHVaFXmKM4gUp30fWG/UFLROyJ4/dOt3+J0D1DPDXTZ/Yj7Rr/lJiHJP+51YCZvThIVG1bLZNo5RUdSXLGO+S9J5M",
      position = {0, 0},
      by_player = player,
    }
  ]],
  mods = {
    "wide-steel-chests",
  },
}
simulations.factoriopedia_wide_passive_provider_chest =
{
  init =
  [[
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_zoom = 1.8
    local player = game.simulation.create_test_player{name="test"}
    player.character.destroy()
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqlkd8KwiAUh9/lXLvRLIP5KhHhtkMd2HSoW8Xw3dOtPxcRFF3J8Xi+76dOULUD9pa0BzkB1UY7kLsJHB21atOeVh2ChDM1mPXKORrjas0Ya5vVJ3QeAgPSDV5AFmHPALUnT7iA5uJ60ENXoY0H2ANojVdeVe1HKoPeuAgyOsVIcM7gCjIreC6i0qujS52U7LCMyCmEwN6k/B/pKhd3bRGlDVmsl/bmlwjrZ4Tvb/sUxwghPSx57CLh9WUMRrRunhFbXm7KUggutmtehHADT9+gyQ==",
      position = {0, 0},
      by_player = player,
    }
  ]],
  mods = {
    "wide-steel-chests",
  },
}
simulations.factoriopedia_wide_storage_chest =
{
  init =
  [[
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_zoom = 1.8
    local player = game.simulation.create_test_player{name="test"}
    player.character.destroy()
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqtkt1qhDAQRt9lruNSs0Ywr1KKRJ21A5psk3HbRXz3TdTuQgstlOYqf9+cwyQzNMOEZ0+WQc9ArbMB9PMMgXprhrRnzYig4Z06zAI7b3rM2lcMDIsAsh1+gM6XFwFomZhwy6+La22nsUEfL4jPOt6xYdMMX4sJOLsQ884maKpZCriCznJ5UJHEpg/pJHnUWySuPL5N+zRgm9Ib/uG1xCG++cg/+BQHtRvl0acjvwFBF/9td7zb/dqju9PT2qWdWJ9oYPThR3J8MmIcI+XxBwRcYmwFqFJWRVUpJVV5lPmy3ADVqLx1",
      position = {0, 0},
      by_player = player,
    }
  ]],
  mods = {
    "wide-steel-chests",
  },
}
simulations.factoriopedia_wide_buffer_chest =
{
  init =
  [[
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_zoom = 1.8
    local player = game.simulation.create_test_player{name="test"}
    player.character.destroy()
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqtkdFqwzAMRf9Fz05Z3Tpb/CtjBCdROkHidLaytgT/++y47WCDjcH8ZMm+9x6kBZphxqMjy6AXoHayHvTzAp4O1gypZ82IoOFEHRbN3PfoivYVPUMQQLbDM+hteBGAlokJs3wtLrWdxwZd/CBuNm5iw6YZvngJOE4+yiebIpOlFHABXTxtVMxhc/DpIUHUWRErh2/z9eqxTeIc/kkV4hHfaOTfaR42KvM8RpqOXI4Dvf9vtt2d7bf53IjKdULXvLqngdH5H3PjsohxTBn35Qt4j7LVX5Wy2leVUlKVO7kN4QNegLn8",
      position = {0, 0},
      by_player = player,
    }
  ]],
  mods = {
    "wide-steel-chests",
  },
}
simulations.factoriopedia_wide_requester_chest =
{
  init =
  [[
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_zoom = 1.8
    local player = game.simulation.create_test_player{name="test"}
    player.character.destroy()
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqtktGOgyAQRf9lnrFJrdiVX9lsDOpsO4liC7htY/j3HaSND022SbO8wAD33pOBGZp+wpMl40HNQO1oHKjPGRwdjO7jntEDgoILdZhZPE/oPNqsPfIMQQCZDq+gtuFLABpPnjA5LMWtNtPQoOUL4uFkR6+9bvpnOwGn0bHDaGJwdC0F3EBlHxvJUV4fXDyIKHVScHU3iUuHbRSn/BUs8BBPQPlbQMVGJqQ9A3VkUyKo4r/xdive6y49oMqlT3dB/U09q9yf0fxq5HHgmPUjCPhh2eIvy7wqqkrKXJa7fBvCL1igv6A=",
      position = {0, 0},
      by_player = player,
    }
  ]],
  mods = {
    "wide-steel-chests",
  },
}

return simulations

