local QBCore = exports['qb-core']:GetCoreObject()


RegisterCommand(Config.LiveryCommand, function(source, args)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    local liveryID = tonumber(args[1])
    if PlayerData.job.name == Config.jobname and PlayerData.job.onduty then
        SetVehicleLivery(veh, liveryID)
        QBCore.Functions.Notify(Config.Alerts['sucess_livery'], "success", 2000)
    else
     QBCore.Functions.Notify(Config.Alerts['error_duty'], "error", 3000) 
    end
end, false)

RegisterCommand(Config.ExtraCommand, function(source, args)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1))
    local extraId = tonumber(args[1])
    local isExtraActive = IsVehicleExtraTurnedOn(vehicle, extraId)
    if PlayerData.job.name == Config.jobname and PlayerData.job.onduty then
        SetVehicleExtra(vehicle, extraId, isExtraActive)
        QBCore.Functions.Notify(Config.Alerts['sucess_extra'], "success", 2000)
    else
     QBCore.Functions.Notify(Config.Alerts['error_job'], "error", 3000) 
    end
end, false)

RegisterCommand(Config.CleanCommand, function(source, args)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    if PlayerData.job.name == Config.jobname and PlayerData.job.onduty then
        SetVehicleDirtLevel(vehicle, 0)
        QBCore.Functions.Notify(Config.Alerts['sucess_clean'], "success", 2000)
    else
     QBCore.Functions.Notify(Config.Alerts['error_job'], "error", 3000) 
    end
end, false)

RegisterCommand(Config.TintCommand, function(source, args) 
    local PlayerData = QBCore.Functions.GetPlayerData()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    local TintID = tonumber(args[1])
    if PlayerData.job.name == Config.jobname and PlayerData.job.onduty then
        SetVehicleWindowTint(vehicle, TintID)
        QBCore.Functions.Notify(Config.Alerts['sucess_tint'], "success", 2000)
    else
     QBCore.Functions.Notify(Config.Alerts['error_job'], "error", 3000) 
    end
end, false)





