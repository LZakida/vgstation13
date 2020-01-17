/* Diffrent misc types of tiles
 * Contains:
 *		Grass
 *		Wood
 *		Carpet
 */

/obj/item/stack/tile
	var/datum/material/material
	inhand_states = list("left_hand" = 'icons/mob/in-hand/left/sheets_n_ores.dmi', "right_hand" = 'icons/mob/in-hand/right/sheets_n_ores.dmi')


/obj/item/stack/tile/New()
	..()
	if(material)
		material = material_list[material]

/obj/item/stack/tile/proc/adjust_slowdown(mob/living/L, current_slowdown)
	return current_slowdown

/obj/item/stack/tile/ex_act(severity)
	switch(severity)
		if(1.0)
			returnToPool(src)
			return
		if(2.0)
			if (prob(50))
				returnToPool(src)
				return
		if(3.0)
			if (prob(5))
				returnToPool(src)
				return
		else
	return

/obj/item/stack/tile/blob_act()
	returnToPool(src)

/obj/item/stack/tile/singularity_act()
	returnToPool(src)
	return 2


/obj/item/stack/tile/proc/update_floor_icon(var/turf/simulated/floor/FL)
	return
/*
 * Grass
 */
/obj/item/stack/tile/grass
	name = "grass tile"
	singular_name = "grass floor tile"
	desc = "A patch of grass like they often use on golf courses"
	icon_state = "tile_grass"
	w_class = W_CLASS_MEDIUM
	force = 1.0
	throwforce = 1.0
	throw_speed = 5
	throw_range = 20
	flags = FPRINT
	siemens_coefficient = 0 //no conduct
	max_amount = 60
	origin_tech = Tc_BIOTECH + "=1"

	material = MAT_GRASS

/obj/item/stack/tile/grass/update_floor_icon(var/turf/simulated/floor/FL)
	if(!FL.broken && !FL.burnt)
		if(!(FL.icon_state in list("grass1","grass2","grass3","grass4")))
			return "grass[pick("1","2","3","4")]"

/*
 * Wood
 */
/obj/item/stack/tile/wood
	name = "wooden floor tile"
	singular_name = "wooden floor tile"
	desc = "an easy to fit wooden floor tile"
	icon_state = "tile-wood"
	w_class = W_CLASS_MEDIUM
	force = 1.0
	throwforce = 1.0
	throw_speed = 5
	throw_range = 20
	flags = FPRINT
	siemens_coefficient = 0 //no conduct
	max_amount = 60
	sheet_type = /obj/item/stack/sheet/wood
	material = MAT_WOOD

/obj/item/stack/tile/wood/update_floor_icon(var/turf/simulated/floor/FL)
	if(!FL.broken && !FL.burnt)
		if( !(FL.icon_state in wood_icons) )
			return "wood"

/obj/item/stack/tile/wood/proc/build(turf/S as turf)
	if(S.air)
		var/datum/gas_mixture/GM = S.air
		if(GM.pressure > HALF_ATM)
			S.ChangeTurf(/turf/simulated/floor/plating/deck)
			return
	S.ChangeTurf(/turf/simulated/floor/plating/deck/airless)


/obj/item/stack/tile/wood/afterattack(atom/target, mob/user, adjacent, params)
	if(adjacent)
		if(isturf(target) || istype(target, /obj/structure/lattice/wood))
			var/turf/T = get_turf(target)
			var/obj/structure/lattice/L
			L = locate(/obj/structure/lattice/wood) in T
			if(!istype(L))
				return
			var/obj/item/stack/tile/wood/S = src
			if(!(T.canBuildPlating(S)))
				to_chat(user, "<span class='warning'>You can't get that deck up without some support!</span>")
				return
			if(S.use(1))
				playsound(src, 'sound/weapons/Genhit.ogg', 50, 1)
				S.build(T)
				if(T.canBuildPlating(S) == BUILD_SUCCESS)
					qdel(L)

/obj/item/stack/tile/wood/attackby(var/obj/item/weapon/W, var/mob/user)
	if(W.is_wrench(user))
		if(use(4))
			playsound(src, 'sound/items/Ratchet.ogg', 50, 1)
			drop_stack(sheet_type, get_turf(user), 1, user)
		else
			to_chat(user, "<span class='warning'>You need at least 4 [src]\s to get a wooden plank back!</span>")
		return

	. = ..()

/*
 * Carpets
 */
/obj/item/stack/tile/carpet
	name = "length of carpet"
	singular_name = "length of carpet"
	desc = "A piece of carpet. It is the same size as a floor tile"
	icon_state = "tile-carpet"
	w_class = W_CLASS_MEDIUM
	force = 1.0
	throwforce = 1.0
	throw_speed = 5
	throw_range = 20
	flags = FPRINT
	siemens_coefficient = 0 //no conduct
	max_amount = 60

	material = MAT_FABRIC

/obj/item/stack/tile/carpet/update_floor_icon(var/turf/simulated/floor/FL)
	if(!FL.broken && !FL.burnt)
		var/connectdir = 0
		for(var/direction in cardinal)
			if(istype(get_step(FL,direction),/turf/simulated/floor))
				var/turf/simulated/floor/FF = get_step(FL,direction)
				if(FF.is_carpet_floor())
					connectdir |= direction

		//Check the diagonal connections for corners, where you have, for example, connections both north and east. In this case it checks for a north-east connection to determine whether to add a corner marker or not.
		var/diagonalconnect = 0 //1 = NE; 2 = SE; 4 = NW; 8 = SW

		//Northeast
		if(connectdir & NORTH && connectdir & EAST)
			if(istype(get_step(FL,NORTHEAST),/turf/simulated/floor))
				var/turf/simulated/floor/FF = get_step(FL,NORTHEAST)
				if(FF.is_carpet_floor())
					diagonalconnect |= 1

		//Southeast
		if(connectdir & SOUTH && connectdir & EAST)
			if(istype(get_step(FL,SOUTHEAST),/turf/simulated/floor))
				var/turf/simulated/floor/FF = get_step(FL,SOUTHEAST)
				if(FF.is_carpet_floor())
					diagonalconnect |= 2

		//Northwest
		if(connectdir & NORTH && connectdir & WEST)
			if(istype(get_step(FL,NORTHWEST),/turf/simulated/floor))
				var/turf/simulated/floor/FF = get_step(FL,NORTHWEST)
				if(FF.is_carpet_floor())
					diagonalconnect |= 4

		//Southwest
		if(connectdir & SOUTH && connectdir & WEST)
			if(istype(get_step(FL,SOUTHWEST),/turf/simulated/floor))
				var/turf/simulated/floor/FF = get_step(FL,SOUTHWEST)
				if(FF.is_carpet_floor())
					diagonalconnect |= 8

		return "carpet[connectdir]-[diagonalconnect]"


/obj/item/stack/tile/arcade
	name = "length of arcade carpet"
	singular_name = "length of arcade carpet"
	desc = "A piece of arcade carpet. It has a snazzy space theme."
	icon_state = "tile-arcade"
	w_class = W_CLASS_MEDIUM
	force = 1.0
	throwforce = 1.0
	throw_speed = 5
	throw_range = 20
	flags = FPRINT
	siemens_coefficient = 0 //no conduct
	max_amount = 60

	material = MAT_FABRIC
/obj/item/stack/tile/arcade/update_floor_icon(var/turf/simulated/floor/FL)
	if(!FL.broken && !FL.burnt)
		return "arcade"


/obj/item/stack/tile/slime
	name = "tile of slime"
	desc = "A flat piece of slime made through xenobiology"
	icon_state = "tile-slime"
	w_class = W_CLASS_MEDIUM
	force = 1
	throwforce = 1.0
	throw_speed = 5
	throw_range = 20
	flags = FPRINT
	siemens_coefficient = 1
	max_amount = 60

obj/item/stack/tile/slime/update_floor_icon(var/turf/simulated/floor/FL)
		return "tile-slime"


/obj/item/stack/tile/slime/adjust_slowdown(mob/living/L, current_slowdown)
	if(isslimeperson(L) || isslime(L))
		current_slowdown *= 5
	else
		current_slowdown *= 0.01
	..()
