local blips = {
    -- {title="", colour=, id=, x=, y=, z=},

    
    {title="Developer House", colour=2, id=40, x = -2971.18, y = -342.16, z = 14.43},
    {title="House 2", colour=1, id=40, x = -1881.87, y = 661.49, z = 130.0},
  ---  {title="Black’s House", colour=1, id=40, x = -1249.97, y = 809.55, z = 193.38},
    {title="House 4", colour=1, id=40, x = -1754.1, y = 362.88, z = 89.57},
    {title="House 5", colour=1, id=40, x = -2583.73, y = 1930.64, z = 167.32},
    {title="House 6", colour=1, id=40, x = -1460.65, y = -29.29, z = 54.65},
    {title="House 7", colour=1, id=40, x = -107.83, y = 834.27, z = 235.71},
    {title="House 8", colour=1, id=40, x = -1048.48, y = -1130.76, z = 2.3},
    {title="House 9", colour=1, id=40, x = -348.51, y = 420.72, z = 111.02},
    {title="House 10", colour=1, id=40, x = -1571.68, y = 33.8, z = 59.29},
    {title="House 11", colour=1, id=40, x = -118.91, y = 986.15, z = 235.75},
    {title="Founder's Desert Mansion", colour=40, id=40, x = 771.97, y = 3404.79, z = 62.68},
    {title="House 13", colour=1, id=40, x = 3431.59, y = 4908.69, z = 36.0},
    {title="Founder's Private Mansion", colour=40, id=40, x = 1260.15, y = -866.82, z = 75.39},
    {title="House 15", colour=1, id=40, x = 1609.88, y = -2610.98, z = 53.74},
    {title="House 16", colour=1, id=40, x = -1638.38, y = 402.45, z = 91.19},
    {title="House 17", colour=1, id=40, x = -252.11, y = 1044.21, z = 236.75},
    {title="House 18", colour=1, id=40, x = 244.74, y = 922.97, z = 210.91},
    {title="House 19", colour=1, id=40, x = -1639.77, y = 461.95, z = 138.53},
    {title="Founder's Beach Mansion", colour=40, id=40, x = -2704.57, y = -94.5, z = 16.81},
    {title="Founder's Paletobay Mansion", colour=40, id=40, x = -101.39144134521, y = 6630.2734375, z = 11.473020553589},


    
    {title="Track 1", colour=5, id=523, x = -388.245, y = -105.6, z = 38.684},
    {title="Track 1", colour=5, id=523, x = 3606.2, y = -6480.78, z = 2190.12},
    
 }

 --[[Info- To disable a blip add "--" before the blip line
 To add a blip just copy and paste a line and change the info and location if needed

 DO NO REPOST, DESTROY OR CLAIM MY SCRIPTS
 
 Made By TheYoungDevelopper]]
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.5)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)