--Beta Content Flags

--Prototypes
if settings.startup["enable-wide-containers-beta"].value == false then
      data.raw["technology"]["wide-storage-containers"].hidden=true
      data.raw["technology"]["wide-logistics-containers"].hidden=true
else
      data.raw["technology"]["wide-storage-containers"].hidden=false
      data.raw["technology"]["wide-logistics-containers"].hidden=false
end
