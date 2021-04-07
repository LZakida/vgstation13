//witty bottom text except at the top
//also
//bottom text

//fukken smelting line wall units, why the fuck are there not wall units, I will fuck somebody I will enter them
/obj/machinery/computer/smelting/wall
	density = 0
	icon = 'icons/obj/terminals.dmi'
	icon_state = "production_console_old"
	smelter_tag = "geo_smelter" //this is a fucking retarded thing to do, do not do this ever or Qui will eat your heart.  --LZ
	light_color = LIGHT_COLOR_ORANGE

/obj/machinery/computer/smelting/wall/update_icon()
	return


/obj/machinery/computer/stacking_unit/wall
	density = 0
	icon = 'icons/obj/terminals.dmi'
	icon_state = "production_console"
	stacker_tag = "geo_stacker" //what the fuck did I say stop this now I said delet this  --LZ

/obj/machinery/computer/stacking_unit/wall/update_icon()
	return
