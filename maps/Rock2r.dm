#ifndef MAP_OVERRIDE
//**************************************************************
// Map Datum -- Rockstation
//**************************************************************

/datum/map/active
	nameShort = "rock"
	nameLong = "Rockstation"
	map_dir = "Rock2r"
	tDomeX = 128
	tDomeY = 58
	tDomeZ = 2
	zLevels = list(
		/datum/zLevel/station,
		/datum/zLevel/centcomm,
		/datum/zLevel/space{
			name = "spaceOldSat" ;
			},
		/datum/zLevel/space{
			name = "derelict" ;
			},
		/datum/zLevel/mining,
		/datum/zLevel/space{
			name = "spacePirateShip" ;
			},
		)
	enabled_jobs = list(/datum/job/trader, /datum/job/clown/rock)
	disabled_jobs = list(/datum/job/clown)

	load_map_elements = list(
	/datum/map_element/dungeon/holodeck
	)

	holomap_offset_x = list(0,0,0,86,4,0,0,)
	holomap_offset_y = list(0,0,0,94,10,0,0,)

	center_x = 226
	center_y = 254

/datum/job/clown/rock
	minimal_access = list(access_clown, access_theatre, access_maint_tunnels)
	must_be_map_enabled = TRUE

////////////////////////////////////////////////////////////////
#include "Rock2r.dmm"
#endif
