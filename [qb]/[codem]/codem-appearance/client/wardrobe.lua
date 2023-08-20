RegisterNetEvent("codem-apperance:OpenWardrobe")
AddEventHandler("codem-apperance:OpenWardrobe", function()
    OpenMenu("wardrobe")
end)

RegisterNetEvent("qb-clothing:client:openOutfitMenu")
AddEventHandler("qb-clothing:client:openOutfitMenu", function()
    OpenMenu("wardrobe")

end)
