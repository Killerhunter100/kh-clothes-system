--[[──────────────────────────────##
##─██████──████████─██████──██████##
##─██░░██──██░░░░██─██░░██──██░░██##
##─██░░██──██░░████─██░░██──██░░██##
##─██░░██──██░░██───██░░██──██░░██##
##─██░░██████░░██───██░░██████░░██##
##─██░░░░░░░░░░██───██░░░░░░░░░░██##
##─██░░██████░░██───██░░██████░░██##
##─██░░██──██░░██───██░░██──██░░██##
##─██░░██──██░░████─██░░██──██░░██##
##─██░░██──██░░░░██─██░░██──██░░██##
##─██████──████████─██████──██████##
##────────────────────────────────##]]

local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}
isLoggedIn = false
onDuty = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    PlayerJob.grade = QBCore.Functions.GetPlayerData().job.grade.level
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

exports['qb-target']:AddBoxZone("policeclothes", vector3(461.52, -1000.45, 30.69), 3.0, 1, {
    name="policeclothes",
    heading=270,
	debugPoly = false,
	minZ = 30,
	maxZ = 31,
}, {
	options = {
		{
            type = "client",
            event = "kh-clothes-system:Client:OpenClothesMenu",
			icon = "fa-solid fa-clothes-hanger",
			label = "خزنة الملابس",
            job = "police",
		},
	},
	distance = 2.5
})

RegisterNetEvent('kh-clothes-system:Client:OpenClothesMenu', function()
    TriggerEvent('kh-context:sendMenu', {
        {
            id = 1,
            header = "قائمة الملابس",
            txt = "وزارة الداخلية",
            url='',
            params = {
                event = "",
				args = {
                    grade4 = '0',
                }
            }
        },
        {
            id = 2,
            header = "الزى الاول",
            txt = "المستجد",
            url='',
            params = {
                event = "kh-clothes-system:Client:setclothes",
				args = {
                    grade = '1',
                }
            }
        },
		{
            id = 3,
            header = "الزى التانى",
            txt = "جندى , جندى اول",
            url='',
            params = {
                event = "kh-clothes-system:Client:setclothes",
				args = {
                    grade2 = '2',
                }
            }
        },
        {
            id = 4,
            header = "الزى الثالث",
            txt = "عريف , رقيب",
            url='',
            params = {
                event = "kh-clothes-system:Client:setclothes",
				args = {
                    grade3 = '3',
                }
            }
        },
        {
            id = 5,
            header = "الزى الرابع",
            txt = "رئيس رقباء",
            url='',
            params = {
                event = "kh-clothes-system:Client:setclothes",
				args = {
                    grade4 = '4',
                }
            }
        },
        {
            id = 6,
            header = "[x] - غلق القائمة - ",
            txt = "",
            url='',
            params = {
                event = "kh-clothes-system:Client:setclothes",
				args = {
                    grade4 = '4',
                }
            }
        },
    })
end)

RegisterNetEvent('kh-clothes-system:Client:setclothes')
AddEventHandler("kh-clothes-system:Client:setclothes", function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob, onDuty = PlayerData.job, PlayerData.job.onduty 
        gender = "male"
        if QBCore.Functions.GetPlayerData().charinfo.gender == 1 then 
            gender = "female"
        end
        if PlayerJob.name == 'police' and PlayerData.job.grade.level == Config.Grade1 then
            -- Pants
            SetPedComponentVariation(GetPlayerPed(-1), 4, Config.Outfits["police"][gender][1]["pants"].item, 0, 0)
            SetPedComponentVariation(GetPlayerPed(-1), 4, Config.Outfits["police"][gender][1]["pants"].item, Config.Outfits["police"][gender][1]["pants"].texture, 0)
            -- Arms
            SetPedComponentVariation(GetPlayerPed(-1), 3, Config.Outfits["police"][gender][1]["arms"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 3, Config.Outfits["police"][gender][1]["arms"].item, Config.Outfits["police"][gender][1]["arms"].texture, 0)
            -- T-Shirt
            SetPedComponentVariation(GetPlayerPed(-1), 8, Config.Outfits["police"][gender][1]["t-shirt"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 8, Config.Outfits["police"][gender][1]["t-shirt"].item, Config.Outfits["police"][gender][1]["t-shirt"].texture, 0)
            -- Vest
            SetPedComponentVariation(GetPlayerPed(-1), 9, Config.Outfits["police"][gender][1]["vest"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 9, Config.Outfits["police"][gender][1]["vest"].item, Config.Outfits["police"][gender][1]["vest"].texture, 0)
            -- Torso 2
            SetPedComponentVariation(GetPlayerPed(-1), 11, Config.Outfits["police"][gender][1]["torso2"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 11, Config.Outfits["police"][gender][1]["torso2"].item, Config.Outfits["police"][gender][1]["torso2"].texture, 0)
            -- Shoes
            SetPedComponentVariation(GetPlayerPed(-1), 6, Config.Outfits["police"][gender][1]["shoes"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 6, Config.Outfits["police"][gender][1]["shoes"].item, Config.Outfits["police"][gender][1]["shoes"].texture, 0)
        elseif PlayerJob.name == 'police' and PlayerData.job.grade.level == Config.Grade2 or PlayerData.job.grade.level == Config.GradeExtra2 then
            -- Pants
            SetPedComponentVariation(GetPlayerPed(-1), 4, Config.Outfits["police"][gender][2]["pants"].item, 0, 0)
            SetPedComponentVariation(GetPlayerPed(-1), 4, Config.Outfits["police"][gender][2]["pants"].item, Config.Outfits["police"][gender][2]["pants"].texture, 0)
            -- Arms
            SetPedComponentVariation(GetPlayerPed(-1), 3, Config.Outfits["police"][gender][2]["arms"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 3, Config.Outfits["police"][gender][2]["arms"].item, Config.Outfits["police"][gender][2]["arms"].texture, 0)
            -- T-Shirt
            SetPedComponentVariation(GetPlayerPed(-1), 8, Config.Outfits["police"][gender][2]["t-shirt"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 8, Config.Outfits["police"][gender][2]["t-shirt"].item, Config.Outfits["police"][gender][2]["t-shirt"].texture, 0)
            -- Vest
            SetPedComponentVariation(GetPlayerPed(-1), 9, Config.Outfits["police"][gender][2]["vest"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 9, Config.Outfits["police"][gender][2]["vest"].item, Config.Outfits["police"][gender][2]["vest"].texture, 0)
            -- Torso 2
            SetPedComponentVariation(GetPlayerPed(-1), 11, Config.Outfits["police"][gender][2]["torso2"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 11, Config.Outfits["police"][gender][2]["torso2"].item, Config.Outfits["police"][gender][2]["torso2"].texture, 0)
            -- Shoes
            SetPedComponentVariation(GetPlayerPed(-1), 6, Config.Outfits["police"][gender][2]["shoes"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 6, Config.Outfits["police"][gender][2]["shoes"].item, Config.Outfits["police"][gender][2]["shoes"].texture, 0)
        elseif PlayerJob.name == 'police' and PlayerData.job.grade.level == Config.Grade3 or PlayerData.job.grade.level == Config.GradeExtra3 then
            -- Pants
            SetPedComponentVariation(GetPlayerPed(-1), 4, Config.Outfits["police"][gender][3]["pants"].item, 0, 0)
            SetPedComponentVariation(GetPlayerPed(-1), 4, Config.Outfits["police"][gender][3]["pants"].item, Config.Outfits["police"][gender][3]["pants"].texture, 0)
            -- Arms
            SetPedComponentVariation(GetPlayerPed(-1), 3, Config.Outfits["police"][gender][3]["arms"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 3, Config.Outfits["police"][gender][3]["arms"].item, Config.Outfits["police"][gender][3]["arms"].texture, 0)
            -- T-Shirt
            SetPedComponentVariation(GetPlayerPed(-1), 8, Config.Outfits["police"][gender][3]["t-shirt"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 8, Config.Outfits["police"][gender][3]["t-shirt"].item, Config.Outfits["police"][gender][3]["t-shirt"].texture, 0)
            -- Vest
            SetPedComponentVariation(GetPlayerPed(-1), 9, Config.Outfits["police"][gender][3]["vest"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 9, Config.Outfits["police"][gender][3]["vest"].item, Config.Outfits["police"][gender][3]["vest"].texture, 0)
            -- Torso 2
            SetPedComponentVariation(GetPlayerPed(-1), 11, Config.Outfits["police"][gender][3]["torso2"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 11, Config.Outfits["police"][gender][3]["torso2"].item, Config.Outfits["police"][gender][3]["torso2"].texture, 0)
            -- Shoes
            SetPedComponentVariation(GetPlayerPed(-1), 6, Config.Outfits["police"][gender][3]["shoes"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 6, Config.Outfits["police"][gender][3]["shoes"].item, Config.Outfits["police"][gender][3]["shoes"].texture, 0)
        elseif PlayerJob.name == 'police' and PlayerData.job.grade.level == Config.Grade4 then
            -- Pants
            SetPedComponentVariation(GetPlayerPed(-1), 4, Config.Outfits["police"][gender][4]["pants"].item, 0, 0)
            SetPedComponentVariation(GetPlayerPed(-1), 4, Config.Outfits["police"][gender][4]["pants"].item, Config.Outfits["police"][gender][4]["pants"].texture, 0)
            -- Arms
            SetPedComponentVariation(GetPlayerPed(-1), 3, Config.Outfits["police"][gender][4]["arms"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 3, Config.Outfits["police"][gender][4]["arms"].item, Config.Outfits["police"][gender][4]["arms"].texture, 0)
            -- T-Shirt
            SetPedComponentVariation(GetPlayerPed(-1), 8, Config.Outfits["police"][gender][4]["t-shirt"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 8, Config.Outfits["police"][gender][4]["t-shirt"].item, Config.Outfits["police"][gender][4]["t-shirt"].texture, 0)
            -- Vest
            SetPedComponentVariation(GetPlayerPed(-1), 9, Config.Outfits["police"][gender][4]["vest"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 9, Config.Outfits["police"][gender][4]["vest"].item, Config.Outfits["police"][gender][4]["vest"].texture, 0)
            -- Torso 2
            SetPedComponentVariation(GetPlayerPed(-1), 11, Config.Outfits["police"][gender][4]["torso2"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 11, Config.Outfits["police"][gender][4]["torso2"].item, Config.Outfits["police"][gender][4]["torso2"].texture, 0)
            -- Shoes
            SetPedComponentVariation(GetPlayerPed(-1), 6, Config.Outfits["police"][gender][4]["shoes"].item, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 6, Config.Outfits["police"][gender][4]["shoes"].item, Config.Outfits["police"][gender][1]["shoes"].texture, 0)
            else
                QBCore.Functions.Notify("هذا الزى ليس مخصص لك")
            end
    end)
end)