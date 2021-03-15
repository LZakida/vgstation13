var/global/datum/shuttle/engineering/engineering_shuttle = new(starting_area = /area/shuttle/engieshuttle)

/datum/shuttle/engineering
	name = "engineering shuttle"

/datum/shuttle/engineering/initialize()
	.=..()
	add_dock(/obj/docking_port/destination/engie/station)
	add_dock(/obj/docking_port/destination/engie/outpost)
	add_dock(/obj/docking_port/destination/engie/tcom)
	add_dock(/obj/docking_port/destination/engie/ai)

/obj/machinery/computer/shuttle_control/engineering/New() //Main shuttle_control code is in code/game/machinery/computer/shuttle_computer.dm
	link_to(engineering_shuttle)
	.=..()

/obj/docking_port/destination/engie/station
	areaname = "engineer dock"

/obj/docking_port/destination/engie/outpost
	areaname = "engineer outpost"

//for froobs like me who use this shuttle for this weird shit --LZ
/obj/docking_port/destination/engie/tcom
	areaname = "telecom dock"

/obj/docking_port/destination/engie/ai
	areaname = "AI satellite dock"
