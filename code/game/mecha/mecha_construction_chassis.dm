/datum/construction/mecha_chassis
	var/datum/construction/reversible/mecha/child
	var/holder_icon_state
	var/holder_icon_file = 'icons/mecha/mech_construction.dmi'

/datum/construction/mecha_chassis/custom_action(step, atom/used_atom, mob/user)
	user.visible_message("[user] has connected [used_atom] to [holder].", "You connect [used_atom] to [holder]")
	holder.overlays += used_atom.icon_state+"+o"
	qdel (used_atom)
	used_atom = null
	return 1

/datum/construction/mecha_chassis/action(atom/used_atom,mob/user as mob)
	return check_all_steps(used_atom,user)


/datum/construction/mecha_chassis/spawn_result(mob/user as mob)
	var/obj/item/mecha_parts/chassis/const_holder = holder
	const_holder.construct = new child(const_holder)
	const_holder.icon = holder_icon_file
	const_holder.icon_state = holder_icon_state
	const_holder.setDensity(TRUE)
	const_holder.overlays.len = 0
	qdel(src)
	return


//        RIPLEY          //
/datum/construction/mecha_chassis/ripley
	child = /datum/construction/reversible/mecha/ripley
	holder_icon_state = "ripley0"

	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/ripley_torso),//1
					 list(Co_KEY=/obj/item/mecha_parts/part/ripley_left_arm),//2
					 list(Co_KEY=/obj/item/mecha_parts/part/ripley_right_arm),//3
					 list(Co_KEY=/obj/item/mecha_parts/part/ripley_left_leg),//4
					 list(Co_KEY=/obj/item/mecha_parts/part/ripley_right_leg)//5
					)


//        FIREFIGHTER      //
/datum/construction/mecha_chassis/firefighter
	child = /datum/construction/reversible/mecha/firefighter
	holder_icon_state = "firefighter0"

	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/ripley_torso),//1
					 list(Co_KEY=/obj/item/mecha_parts/part/ripley_left_arm),//2
					 list(Co_KEY=/obj/item/mecha_parts/part/ripley_right_arm),//3
					 list(Co_KEY=/obj/item/mecha_parts/part/ripley_left_leg),//4
					 list(Co_KEY=/obj/item/mecha_parts/part/ripley_right_leg),//5
					 list(Co_KEY=/obj/item/clothing/suit/fire)//6
					)


//          GYGAX          //
/datum/construction/mecha_chassis/gygax
	child = /datum/construction/reversible/mecha/combat/gygax
	holder_icon_state = "gygax0"

	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/gygax_torso),//1
					 list(Co_KEY=/obj/item/mecha_parts/part/gygax_left_arm),//2
					 list(Co_KEY=/obj/item/mecha_parts/part/gygax_right_arm),//3
					 list(Co_KEY=/obj/item/mecha_parts/part/gygax_left_leg),//4
					 list(Co_KEY=/obj/item/mecha_parts/part/gygax_right_leg),//5
					 list(Co_KEY=/obj/item/mecha_parts/part/gygax_head)
					)


//          DURAND         //

/datum/construction/mecha_chassis/durand
	child = /datum/construction/reversible/mecha/combat/durand
	holder_icon_state = "durand0"


	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/durand_torso),//1
				 list(Co_KEY=/obj/item/mecha_parts/part/durand_left_arm),//2
				 list(Co_KEY=/obj/item/mecha_parts/part/durand_right_arm),//3
				 list(Co_KEY=/obj/item/mecha_parts/part/durand_left_leg),//4
				 list(Co_KEY=/obj/item/mecha_parts/part/durand_right_leg),//5
				 list(Co_KEY=/obj/item/mecha_parts/part/durand_head)
				)


//         MARAUDER        //

/datum/construction/mecha_chassis/marauder
	child = /datum/construction/reversible/mecha/combat/marauder
	holder_icon_state = "marauder0"

	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/marauder_torso),//1
				 list(Co_KEY=/obj/item/mecha_parts/part/marauder_left_arm),//2
				 list(Co_KEY=/obj/item/mecha_parts/part/marauder_right_arm),//3
				 list(Co_KEY=/obj/item/mecha_parts/part/marauder_left_leg),//4
				 list(Co_KEY=/obj/item/mecha_parts/part/marauder_right_leg),//5
				 list(Co_KEY=/obj/item/mecha_parts/part/marauder_head)
				)



//        ODYSSEUS         //
/datum/construction/mecha_chassis/odysseus
	child = /datum/construction/reversible/mecha/odysseus
	holder_icon_state = "odysseus0"

	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/odysseus_torso),//1
					 list(Co_KEY=/obj/item/mecha_parts/part/odysseus_head),//2
					 list(Co_KEY=/obj/item/mecha_parts/part/odysseus_left_arm),//3
					 list(Co_KEY=/obj/item/mecha_parts/part/odysseus_right_arm),//4
					 list(Co_KEY=/obj/item/mecha_parts/part/odysseus_left_leg),//5
					 list(Co_KEY=/obj/item/mecha_parts/part/odysseus_right_leg)//6
					)



//         PHAZON           //
/datum/construction/mecha_chassis/phazon
	child = /datum/construction/reversible/mecha/phazon
	holder_icon_state = "phazon0"

//	result = "/obj/mecha/combat/phazon" Why is this here?
	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/phazon_torso),//1
					 list(Co_KEY=/obj/item/mecha_parts/part/phazon_left_arm),//2
					 list(Co_KEY=/obj/item/mecha_parts/part/phazon_right_arm),//3
					 list(Co_KEY=/obj/item/mecha_parts/part/phazon_left_leg),//4
					 list(Co_KEY=/obj/item/mecha_parts/part/phazon_right_leg),//5
					 list(Co_KEY=/obj/item/mecha_parts/part/phazon_head)
					)



////////////HONK////////////////
/datum/construction/mecha_chassis/honker
	child = /datum/construction/reversible/mecha/honker
	holder_icon_file = 'icons/mecha/mech_construct.dmi'
	holder_icon_state = "honker_chassis"

	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/honker_torso),//1
					 list(Co_KEY=/obj/item/mecha_parts/part/honker_left_arm),//2
					 list(Co_KEY=/obj/item/mecha_parts/part/honker_right_arm),//3
					 list(Co_KEY=/obj/item/mecha_parts/part/honker_left_leg),//4
					 list(Co_KEY=/obj/item/mecha_parts/part/honker_right_leg),//5
					 list(Co_KEY=/obj/item/mecha_parts/part/honker_head)
					)



/datum/construction/mecha_chassis/reticence
	child = /datum/construction/reversible/mecha/reticence
	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/reticence_torso),//1
					 list(Co_KEY=/obj/item/mecha_parts/part/reticence_left_arm),//2
					 list(Co_KEY=/obj/item/mecha_parts/part/reticence_right_arm),//3
					 list(Co_KEY=/obj/item/mecha_parts/part/reticence_left_leg),//4
					 list(Co_KEY=/obj/item/mecha_parts/part/reticence_right_leg),//5
					 list(Co_KEY=/obj/item/mecha_parts/part/reticence_head)
					)

/datum/construction/mecha_chassis/reticence/spawn_result()
	var/obj/item/mecha_parts/chassis/const_holder = holder
	const_holder.construct = new child(const_holder)
	const_holder.setDensity(TRUE)
	qdel(src)
	return



//        CLARKE         //
/datum/construction/mecha_chassis/clarke
	child = /datum/construction/reversible/mecha/clarke
	holder_icon_state = "clarke0"

	steps = list(list(Co_KEY=/obj/item/mecha_parts/part/clarke_torso),//1
					 list(Co_KEY=/obj/item/mecha_parts/part/clarke_head),//2
					 list(Co_KEY=/obj/item/mecha_parts/part/clarke_left_arm),//3
					 list(Co_KEY=/obj/item/mecha_parts/part/clarke_right_arm),//4
					 list(Co_KEY=/obj/item/mecha_parts/part/clarke_left_tread),//5
					 list(Co_KEY=/obj/item/mecha_parts/part/clarke_right_tread)//6
					)

