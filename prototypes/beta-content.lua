--Beta Content Flags
--Prototypes
if settings.startup["enable-wide-containers-beta"].value == false then
      data.raw["technology"]["wide-storage-containers"].hidden=true
      data.raw["technology"]["wide-logistics-containers"].hidden=true
      data.raw["item"]["wide-active-provider-chest"].hidden=true
      data.raw["item"]["wide-passive-provider-chest"].hidden=true
      data.raw["item"]["wide-storage-chest"].hidden=true
      data.raw["item"]["wide-buffer-chest"].hidden=true
      data.raw["item"]["wide-requester-chest"].hidden=true
      data.raw["item"]["wide-active-provider-chest"].hidden_in_factoriopedia=true
      data.raw["item"]["wide-passive-provider-chest"].hidden_in_factoriopedia=true
      data.raw["item"]["wide-storage-chest"].hidden_in_factoriopedia=true
      data.raw["item"]["wide-buffer-chest"].hidden_in_factoriopedia=true
      data.raw["item"]["wide-requester-chest"].hidden_in_factoriopedia=true
else
      data.raw["technology"]["wide-storage-containers"].hidden=false
      data.raw["technology"]["wide-logistics-containers"].hidden=false
      data.raw["item"]["wide-active-provider-chest"].hidden=false
      data.raw["item"]["wide-passive-provider-chest"].hidden=false
      data.raw["item"]["wide-storage-chest"].hidden=false
      data.raw["item"]["wide-buffer-chest"].hidden=false
      data.raw["item"]["wide-requester-chest"].hidden=false
      data.raw["item"]["wide-active-provider-chest"].hidden_in_factoriopedia=false
      data.raw["item"]["wide-passive-provider-chest"].hidden_in_factoriopedia=false
      data.raw["item"]["wide-storage-chest"].hidden_in_factoriopedia=false
      data.raw["item"]["wide-buffer-chest"].hidden_in_factoriopedia=false
      data.raw["item"]["wide-requester-chest"].hidden_in_factoriopedia=false
end
