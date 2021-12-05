ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local PlayerData = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

function WeaponDealer()
    local WeaponDealer = RageUI.CreateMenu("Arsenal", "Menu Intéraction..")
    WeaponDealer:SetRectangleBanner(0, 0, 0)
        RageUI.Visible(WeaponDealer, not RageUI.Visible(WeaponDealer))
            while WeaponDealer do
            Citizen.Wait(0)
            RageUI.IsVisible(WeaponDealer, true, true, true, function()

                RageUI.ButtonWithStyle("→ Terminer l'achat",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                    FreezeEntityPosition(PlayerPedId(), false)
                    ESX.ShowNotification('[~r~Anthony~w~] *Message Radio* la personne descend')
                    RageUI.CloseAll()
                    end
                end)

                RageUI.Separator("↓ ~o~   Voici les armes à feu  ~s~↓")
            
                RageUI.ButtonWithStyle("→ Pistolet","Prix : 250 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                    RenderSprite("RageUI", "pistolet", 0, 600, 430, 290, 100)
                end
                if (Selected) then   

                local item = "weapon_pistol"

                local labeletn = "Pistolet"

                local prix = 250000

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)

                end

                end)





                RageUI.ButtonWithStyle("→ Pistolet Calibre 50","Prix : 450 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "Calibre50", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   

                local item = "weapon_pistol50"

                local prix = 450000

                local labeletn = "Pistolet Calibre 50"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)

                end

                end)

    
                RageUI.ButtonWithStyle("→ Pistolet Pétoire", "Prix : 150 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "petoire", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   

                local item = "weapon_snspistol"

                local prix = 150000

                local labeletn = "Pétoire"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)

                end

                end)

                RageUI.ButtonWithStyle("→ Pistolet de Combat", "Prix : 200 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "pistolet_combat", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   

                local item = "weapon_combatpistol"

                local prix = 200000

                local labeletn = "Pistolet de Combat"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)

                end

                end)

                RageUI.ButtonWithStyle("→ Pistolet Vintage","Prix : 210 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "Vintage", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   

                local item = "weapon_vintagepistol"

                local prix = 210 000

                local labeletn = "Pistolet Vintage"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)

                end

                end)



                RageUI.Separator("↓ ~o~   Armes Lourdes  ~s~↓")


                RageUI.ButtonWithStyle("→ M4A1","Prix : 800 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "M4", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   
                
                local item = "weapon_carbinerifle"
                
                local prix = 800 000$

                local labeletn = "M4A1"
                
                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
                
                end
                
                end)

                RageUI.ButtonWithStyle("→ MP5","Prix : 750 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "Mitrailette", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   
                    
                local item = "weapon_combatpdw"
                    
                local prix = 750000
                
                local labeletn = "MP5"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
                    
                end
                    
                end)

                RageUI.ButtonWithStyle("→ Matraque", "Prix : 50000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "matraque", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   
                        
                local item = "weapon_combatpdw"
                        
                local prix = 50000

                local labeletn = "Matraque"
                        
                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
                        
                end
                        
                end)

                                    
                RageUI.ButtonWithStyle("→ Tazer", "Prix : 75000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "TazeMesSeins", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   
                        
                local item = "weapon_stungun"
                        
                local prix = 75000

                local labeletn = "Tazer"
                        
                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
                        
                end
                        
                end)



               RageUI.Separator("↓ ~o~   Voici les armes blanches  ~s~↓")


                RageUI.ButtonWithStyle("→ Couteau", "Prix : 5 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "couteau", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   

                local item = "weapon_knife"

                local prix = 5 000

                local labeletn = "Couteau"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)

                end

                end)





                RageUI.ButtonWithStyle("→ Batte", "Prix : 5 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "batte", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   

                local item = "weapon_bat"

                local prix = 5000

                local labeletn = "Batte"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)

                end

                end)

    

                RageUI.ButtonWithStyle("→ Dague", "Prix : 5 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "dagger", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   

                local item = "weapon_dagger"

                local prix = 5 000

                local labeletn = "Dague"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)

                end

                end)


   
                RageUI.ButtonWithStyle("→ Bouteille", "Prix : 5 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "bouteille", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   

                local item = "weapon_bottle"

                local prix = 5 000

                local labeletn = "Bouteille"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)

                end

                end)

                RageUI.ButtonWithStyle("→ Pied de biche", "Prix : 5 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                    if a then
                        RenderSprite("RageUI", "pdb", 0, 600, 430, 290, 100)
                    end
                if (Selected) then   
    
                local item = "weapon_crowbar"
    
                local prix = 5 000
    
                local labeletn = "Pied de biche"

                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
    
                end
    
                end)

                    RageUI.ButtonWithStyle("→ Club de Golf", "Prix : 5 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                        if a then
                            RenderSprite("RageUI", "cdg", 0, 600, 430, 290, 100)
                        end
                        if (Selected) then   
            
                        local item = "weapon_golfclub"
            
                        local prix = 5 000

                        local labeletn = "Club de Golf"
            
                        TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
            
                        end
            
                        end)

                        RageUI.ButtonWithStyle("→ Marteau", "Prix : 5 000", {RightLabel = ""},true, function(Hovered, a, Selected)
                            if a then
                                RenderSprite("RageUI", "marto", 0, 600, 430, 290, 100)
                            end
                            if (Selected) then   
                
                            local item = "weapon_hammer"
                
                            local prix = 5 000
                
                            local labeletn = "Marteau"

                            TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
                
                            end
                
                            end)

                            RageUI.ButtonWithStyle("→ Hachette", "Prix : 5 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                                if a then
                                    RenderSprite("RageUI", "hachette", 0, 600, 430, 290, 100)
                                end
                                if (Selected) then   
                    
                                local item = "weapon_hatchet"
                    
                                local prix = 5 000
                    
                                local labeletn = "Hachette"

                                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
                    
                                end
                    
                                end)

                                RageUI.ButtonWithStyle("→ Poing Américain", "Prix : 5 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                                    if a then
                                        RenderSprite("RageUI", "pa", 0, 600, 430, 290, 100)
                                    end
                                if (Selected) then   
                        
                                local item = "weapon_knuckle"
                        
                                local prix = 5 000

                                local labeletn = "Poing Américain"
                        
                                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
                        
                                end
                        
                                end)

                                RageUI.ButtonWithStyle("→ Machette", "Prix : 5 000$", {RightLabel = ""},true, function(Hovered, a, Selected)
                                    if a then
                                        RenderSprite("RageUI", "machette", 0, 600, 430, 290, 100)
                                    end
                                if (Selected) then   
                            
                                local item = "weapon_machete"
                            
                                local prix = 5 000

                                local labeletn = "Machette"
                            
                                TriggerServerEvent('Kaitoachetedesarmes', item, labeletn, prix)
                            
                                end
                            
                                end)


end, function()

end)
            if not RageUI.Visible(WeaponDealer) then
            WeaponDealer = RMenu:DeleteType("WeaponDealer", true)
        end
    end
end


---- MENU POSITION

local position = {
    {x = 188.71, y = 10.97, z = 81.41}
}

-- OUVERTURE DU MENU 
Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
            if dist <= 1.0 then
               wait = 0
			   RageUI.Text({

				message = "~b~Sélectionnez [~c~E~c~] ~b~pour parler avec Anthony",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
                    FreezeEntityPosition(PlayerPedId(), true)
					WeaponDealer()
                
    end
    end
    Citizen.Wait(wait)
    end
end
end)

--################################# PED ###########################################################

-- ped pour acheter les armes

local leped = {
	{hash="g_m_m_chigoon_01", x = 188.71, y = 10.97, z = 81.32, a=318.95}, 
}

Citizen.CreateThread(function()
	for _, item2 in pairs(leped) do
		local hash = GetHashKey(item2.hash)
		while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
		end
		ped2 = CreatePed("PED_TYPE_CIVFEMALE", item2.hash, item2.x, item2.y, item2.z-0.92, item2.a, false, true)
        local playerPed        = GetPlayerPed(-1)
        TaskStartScenarioInPlace(ped2, 'WORLD_HUMAN_DRUG_DEALER', 0, true)
		SetBlockingOfNonTemporaryEvents(ped2, true)
		FreezeEntityPosition(ped2, true)
		SetEntityInvincible(ped2, true)
	end
end)


-- Ped de l'entrée
local leped = {
	{hash="g_m_m_chigoon_01", x = 191.92, y = 3.92, z = 73.75, a=184.05}, 
}

Citizen.CreateThread(function()
	for _, item2 in pairs(leped) do
		local hash = GetHashKey(item2.hash)
		while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
		end
		ped2 = CreatePed("PED_TYPE_CIVFEMALE", item2.hash, item2.x, item2.y, item2.z-0.92, item2.a, false, true)
        local playerPed        = GetPlayerPed(-1)
        TaskStartScenarioInPlace(ped2, 'WORLD_HUMAN_PICNIC', 0, true)
		SetBlockingOfNonTemporaryEvents(ped2, true)
		FreezeEntityPosition(ped2, true)
		SetEntityInvincible(ped2, true)
	end
end)

---- PED SUR LE CANAP

local leped = {
	{hash="g_m_m_chigoon_01", x = 194.21, y = 8.15, z = 73.78, a=355.74}, 
}

Citizen.CreateThread(function()
	for _, item2 in pairs(leped) do
		local hash = GetHashKey(item2.hash)
		while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
		end
		ped2 = CreatePed("PED_TYPE_CIVFEMALE", item2.hash, item2.x, item2.y, item2.z-0.92, item2.a, false, true)
        local playerPed        = GetPlayerPed(-1)
        TaskStartScenarioInPlace(ped2, 'WORLD_HUMAN_PICNIC', 0, true)
		SetBlockingOfNonTemporaryEvents(ped2, true)
		FreezeEntityPosition(ped2, true)
		SetEntityInvincible(ped2, true)
	end
end)

-- PED QUI FAIT LES ARMES SUR LE MAPPING
local leped = {
	{hash="g_m_y_salvaboss_01", x = 199.38, y = 18.95, z = 73.30, a=341.7}, 
}

Citizen.CreateThread(function()
	for _, item2 in pairs(leped) do
		local hash = GetHashKey(item2.hash)
		while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
		end
		ped2 = CreatePed("PED_TYPE_CIVFEMALE", item2.hash, item2.x, item2.y, item2.z-0.92, item2.a, false, true)
        local playerPed        = GetPlayerPed(-1)
        TaskStartScenarioInPlace(ped2, 'WORLD_HUMAN_STAND_FIRE', 0, true)
		SetBlockingOfNonTemporaryEvents(ped2, true)
		FreezeEntityPosition(ped2, true)
		SetEntityInvincible(ped2, true)
	end
end)

local leped = {
	{hash="g_m_y_salvaboss_01", x = 195.48, y = 20.23, z = 73.30, a=337.67}, 
}

Citizen.CreateThread(function()
	for _, item2 in pairs(leped) do
		local hash = GetHashKey(item2.hash)
		while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
		end
		ped2 = CreatePed("PED_TYPE_CIVFEMALE", item2.hash, item2.x, item2.y, item2.z-0.92, item2.a, false, true)
        local playerPed        = GetPlayerPed(-1)
        TaskStartScenarioInPlace(ped2, 'WORLD_HUMAN_STAND_FIRE', 0, true)
		SetBlockingOfNonTemporaryEvents(ped2, true)
		FreezeEntityPosition(ped2, true)
		SetEntityInvincible(ped2, true)
	end
end)

-- PED DANS LES ESCALIERS 
local leped = {
	{hash="g_m_m_casrn_01", x = 189.54, y = 11.22, z = 77.41, a=359.61}, 
}

Citizen.CreateThread(function()
	for _, item2 in pairs(leped) do
		local hash = GetHashKey(item2.hash)
		while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
		end
		ped2 = CreatePed("PED_TYPE_CIVFEMALE", item2.hash, item2.x, item2.y, item2.z-0.92, item2.a, false, true)
        local playerPed        = GetPlayerPed(-1)
        TaskStartScenarioInPlace(ped2, 'WORLD_HUMAN_STAND_IMPATIENT', 0, true)
		SetBlockingOfNonTemporaryEvents(ped2, true)
		FreezeEntityPosition(ped2, true)
		SetEntityInvincible(ped2, true)
	end
end)
