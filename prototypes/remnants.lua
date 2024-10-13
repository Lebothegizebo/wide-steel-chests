local remnants =
{
    {    
        type = "corpse",
        name = "wide-wooden-chest-remnants",
        icon_size = 128,
        flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
        subgroup = "wide-storage-remnants",
        order = "a",
        selection_box = {{-1, -0.5}, {1, 0.5}},
        tile_width = 2,
        tile_height = 1,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
            line_length = 1,
            width = 192,
            height = 87,
            frame_count = 1,
            direction_count = 1,
            scale = 0.5
        }
    },
    {
        type = "corpse",
        name = "wide-iron-chest-remnants",
        icon_size = 128,
        flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
        subgroup = "wide-storage-remnants",
        order = "b",
        selection_box = {{-1, -0.5}, {1, 0.5}},
        tile_width = 2,
        tile_height = 1,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
            line_length = 1,
            width = 192,
            height = 87,
            frame_count = 1,
            direction_count = 1,
            scale = 0.5
        },
    },
    {
        type = "corpse",
        name = "wide-steel-chest-remnants",
        icon_size = 128,
        flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
        subgroup = "wide-storage-remnants",
        order = "c",
        selection_box = {{-1, -0.5}, {1, 0.5}},
        tile_width = 2,
        tile_height = 1,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
            line_length = 1,
            width = 192,
            height = 87,
            frame_count = 1,
            direction_count = 1,
            scale = 0.5
        }
    },
}
data:extend(remnants)