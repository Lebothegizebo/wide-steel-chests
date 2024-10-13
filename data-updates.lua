-- Wide AAI Container Graphics Compatibility
if mods["aai-containers"] and mods["wide-aai-chests"] and settings.startup["wide-aai-chests-enabled-by-default"].value then
    require("prototypes.compatibility.wide-aai-chests")
elseif mods["wide-aai-chests"] and settings.startup["wide-aai-chests-enabled"].value  then
    require("prototypes.compatibility.wide-aai-chests")
else
end

--Modifies recipe order for AAI containers if installed
if mods["aai-containers"] then
    --container-1
    data.raw["recipe"]["wide-steel-chest"].order="a"
    data.raw["recipe"]["wide-iron-chest"].subgroup="container-1"
    --wide-aai-wood-containers
    data.raw["recipe"]["iron-chest"].subgroup="wide-aai-wood-containers"
    data.raw["recipe"]["iron-chest"].order="aa"
    data.raw["recipe"]["wooden-chest"].subgroup="wide-aai-wood-containers"
    data.raw["recipe"]["wooden-chest"].order="ab"
    data.raw["recipe"]["wide-iron-chest"].subgroup="wide-aai-wood-containers"
    data.raw["recipe"]["wide-iron-chest"].order="ac"
    data.raw["recipe"]["wide-wooden-chest"].subgroup="wide-aai-wood-containers"
    data.raw["recipe"]["wide-wooden-chest"].order="ad"
end
