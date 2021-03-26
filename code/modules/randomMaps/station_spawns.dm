/datum/map_element/station_spawn
	var/needswhitelist = FALSE
	var/area/spawnarea = /area/space

/datum/map_element/station_spawn/aisat
	file_path = "maps/rockstation/aisat.dmm"
	spawnarea = /area/space/random/stationsats/AI

/datum/map_element/station_spawn/telecom
	file_path = "maps/rockstation/telecom.dmm"
	spawnarea = /area/space/random/stationsats/telecom

/proc/generate_station()
	var/list/list_of_spawns = get_map_element_objects(/datum/map_element/station_spawn)
	for(var/datum/map_element/station_spawn/S in list_of_spawns)
		if (S.needswhitelist)
			if (!(S.type in map.spawnwhitelist))
				list_of_spawns -= S
		else
			if (S.type in map.spawnblacklist)
				list_of_spawns -= S
	for(var/datum/map_element/station_spawn/S in list_of_spawns)
		var/area/A = locate(S.spawnarea)
		populate_area_with_vaults(A, list(S))

//TODO: white/black list shenaniganses, also maybe logging messages
//butt