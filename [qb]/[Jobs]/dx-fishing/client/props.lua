local CurrentProp = nil
local HasProp = false

function AddProp(Name)
    if Config.PropList[Name] ~= nil then
      if CurrentProp == nil then
        RequestModelHash(Config.PropList[Name]['prop'])
        CurrentProp = CreateObject(Config.PropList[Name]['hash'], 0, 0, 0, true, true, true)
        AttachEntityToEntity(CurrentProp, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), Config.PropList[Name]['bone-index']['bone']), Config.PropList[Name]['bone-index']['X'], Config.PropList[Name]['bone-index']['Y'], Config.PropList[Name]['bone-index']['Z'], Config.PropList[Name]['bone-index']['XR'], Config.PropList[Name]['bone-index']['YR'], Config.PropList[Name]['bone-index']['ZR'], true, true, false, true, 1, true)
        HasProp = true
      end
    end 
end

function RemoveProp()
  if CurrentProp ~= nil then
    if HasProp ~= nil then
     DetachEntity(CurrentProp, true, false)
     DeleteEntity(CurrentProp)
     DeleteObject(CurrentProp)
     HasProp = false
     CurrentProp = nil
    end
  end
end

function RequestModelHash(Model)
  RequestModel(Model)
	while not HasModelLoaded(Model) do
	    Wait(1)
    end
end
