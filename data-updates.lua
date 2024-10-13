--Compatibility

-- Wide AAI Container Graphics
if mods["aai-containers"] and mods["wide-aai-chests"] and settings.startup["wide-aai-chests-enabled-by-default"].value then
    require("prototypes.compatibility.wide-aai-chests")
elseif mods["wide-aai-chests"] and settings.startup["wide-aai-chests-enabled"].value  then
    require("prototypes.compatibility.wide-aai-chests")
else
end
