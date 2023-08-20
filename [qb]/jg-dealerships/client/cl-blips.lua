-- TODO: Text UI toggle for management panel and also display vehicles?
--
-- Blips
--
local blips = {}

local function createBlip(name, coords, blipId, blipColour, blipScale)
  local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
  SetBlipSprite(blip, blipId)
  SetBlipColour(blip, blipColour)
  SetBlipScale(blip, blipScale)
  SetBlipAsShortRange(blip, true)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(name)
  EndTextCommandSetBlipName(blip)
  return blip
end

RegisterNetEvent("jg-dealerships:client:create-blips", function()
  for _, blip in pairs(blips) do RemoveBlip(blip) end

  Framework.Client.TriggerCallback("jg-dealerships:server:get-blips-data", function(data)
    for _, dealer in pairs(data.dealerships) do
      if dealer and dealer.config then
        local blipName = Locale.dealership .. ": " .. dealer.label
        local blip = createBlip(blipName, dealer.config.openShowroom, dealer.config.blip.id, dealer.config.blip.color, dealer.config.blip.scale)
        blips[#blips + 1] = blip
      end
    end
  end)
end)

-- Create blips on load
CreateThread(function()
  TriggerEvent("jg-dealerships:client:create-blips")
end)

--
-- Text UI prompts
--
local resetTextUIs = false
local drawTextVisible, currentText
local sleep = 1000

function showDrawText(id, text)
  if drawTextVisible ~= id or currentText ~= text then
    drawTextVisible = id
    currentText = text
    Framework.Client.ShowTextUI(text)
  end
end

function hideDrawText(id)
  if drawTextVisible == id then
    drawTextVisible = nil
    Framework.Client.HideTextUI()
  end
end

local function toggleDrawText(id, coords, distance, event, prompt, keyBind)
  local ped = PlayerPedId()
  local pos = GetEntityCoords(ped)
  local dist = #(pos - vector3(coords.x, coords.y, coords.z))
  local distZ = math.abs(pos.z - coords.z)
  local show = false

  if dist < distance and distZ < 3 then
    sleep = 0
    showDrawText(id, prompt)
    if IsControlJustPressed(0, keyBind) then
      TriggerEvent("jg-dealerships:client:" .. event, id)
    end
  else
    hideDrawText(id)
  end
end

local function createToggleThread(func)
  CreateThread(function()
    while not resetTextUIs do
      sleep = 1000
      func()
      Wait(sleep)
    end
  end)
end

function createTextUIs()
  resetTextUIs = false
  Framework.Client.TriggerCallback("jg-dealerships:server:get-blips-data", function(data)
    for _, dealer in pairs(data.dealerships) do
      if dealer.config then
        createToggleThread(function()
          toggleDrawText(dealer.name, dealer.config.openShowroom, 5, "open-showroom", Config.OpenShowroomPrompt, Config.OpenShowroomKeyBind)
        end)
      
        if dealer.type == "owned" and dealer.owner_id == Framework.Client.GetPlayerIdentifier() then
          createToggleThread(function()
            toggleDrawText(dealer.name, dealer.config.openManagement, 5, "open-management", Config.OpenManagementPrompt, Config.OpenManagementKeyBind)
          end)
        end
      end
    end
  end)
end

RegisterNetEvent("jg-dealerships:client:create-text-uis", function()
  Citizen.CreateThread(function()
    resetTextUIs = true;
    Wait(1500)
    createTextUIs()
  end)
end)

Citizen.CreateThread(function()
  while not Framework.Client.GetPlayerIdentifier() do Wait(1000) end
  createTextUIs()
end)