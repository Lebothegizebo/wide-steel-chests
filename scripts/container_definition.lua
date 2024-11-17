function define_containers(params)
    ---@type data.ContainerPrototype
    orig_container = nil
	for _, container_type in pairs{"container", "logistic-container", "temporary-container", "infinity-container"} do
		orig_container = data.raw[container_type][params.name] --[[@as data.ContainerPrototype]]
		if orig_container then break end
	end
	if not orig_container then error("No container found of name '"..params.name.."'") end
	wide_container = table.deepcopy(orig_container)
	tall_container = table.deepcopy(orig_container)
	orig_remnants = data.raw["corpse"][orig_container.corpse--[[@as string]]]
	wide_remnants = table.deepcopy(orig_remnants)
	tall_remnants = table.deepcopy(orig_remnants)
	wide_name = "wide-"..params.name
	tall_name = "tall-"..params.name
	item_name = wide_name --TODO: make a migration to use the rotatable name?
	rote_name = "rotatable-"..params.name
    remnants_subgroup = params.subgroup.."-remnants"
    wide_remnants_name = wide_name.."-remnants"
    tall_remnants_name = tall_name.."-remnants"
    localised_name = params.localised_name or {"entity-name."..wide_name}
	return 
    {
        orig_container,
        orig_remnants,
        wide_container, 
        tall_container, 
        wide_remnants, 
        tall_remnants,
        wide_name,
        tall_name,
        item_name,
        rote_name,
        remnants_subgroup,
        wide_remnants_name,
        tall_remnants_name,
        localised_name,
    }
end