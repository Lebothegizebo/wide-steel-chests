local meld = require("meld")

-- The entities to add the icons to
local entities = {
	-- Wide containers
	"wide-steel-chest",
	"wide-passive-provider-chest",
	"wide-active-provider-chest",
	"wide-storage-chest",
	"wide-buffer-chest",
	"wide-requester-chest",
	-- Tall containers
	"tall-steel-chest",
	"tall-passive-provider-chest",
	"tall-active-provider-chest",
	"tall-storage-chest",
	"tall-buffer-chest",
	"tall-requester-chest",
	-- Rotating assembling machines
	"rotatable-steel-chest",
	"rotatable-passive-provider-chest",
	"rotatable-active-provider-chest",
	"rotatable-storage-chest",
	"rotatable-buffer-chest",
	"rotatable-requester-chest",
}
-- The items to add the icons to
local items = {
	"wide-steel-chest",
	"wide-passive-provider-chest",
	"wide-active-provider-chest",
	"wide-storage-chest",
	"wide-buffer-chest",
	"wide-requester-chest",
}

-- The meld table to do the adding
local add_icon = {
	icons = meld.append{
		{
			icon = "__wide-aai-chests__/graphics/icons/number/1x2.png",
			icon_size = 47,
			scale = 0.5,
			shift = {-2.5, -5.5}
		}
	}
}

-- Loop over every entity, and use the meld table
for key, value in pairs(defines.prototypes.entity) do
	local prototype_list = data.raw[key] or {}
	data.raw[key] = prototype_list

	for _, name in pairs(entities) do
		local prototype = prototype_list[name]
		if prototype then meld(prototype, add_icon) end
	end
end

-- Loop over every item, and use the meld table
-- Because we just search in the basic items table, it may have issues
-- if the item we want to modify is a special type
local item_protoypes = data.raw["item"]
for _, name in pairs(items) do
	meld(item_protoypes[name], add_icon)
end