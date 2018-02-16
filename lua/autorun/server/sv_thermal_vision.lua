util.AddNetworkString("thermal_vision_darkrp_jobs")
local thermal_vision_job_list = {}

--ADD, REMOVE OR CHANGE JOBS HERE
--You have to find yourself the index number of the job you want to add
--This example shows the index number of some jobs ON THE VANILLA GAMEMODE only
thermal_vision_job_list[0] = 2 --TEAM_POLICE
thermal_vision_job_list[1] = 6 --TEAM_MEDIC
thermal_vision_job_list[2] = 8 --TEAM_MAYOR

local function thermal_vision_send_jobs(ply)
	net.Start("thermal_vision_darkrp_jobs")
	net.WriteTable(thermal_vision_job_list)
	net.Send(ply)
end
hook.Add("PlayerInitialSpawn", "thermal_vision_send_jobs", thermal_vision_send_jobs)
