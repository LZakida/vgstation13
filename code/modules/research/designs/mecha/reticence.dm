//Reticence
/datum/design/reticence/chassis
	name = "Exosuit Structure (Reticence chassis)"
	desc = "Used to build a Reticence chassis."
	id = "reticence_chassis"
	req_tech = list(Tc_COMBAT = 1)
	build_type = MECHFAB
	build_path = /obj/item/mecha_parts/chassis/reticence
	materials = list(MAT_METAL=20000)
//	construction_time = 100
	category = "Reticence"

/datum/design/reticence/torso
	name = "Exosuit Structure (Reticence torso)"
	desc = "Used to build a Reticence torso."
	id = "reticence_torso"
	req_tech = list(Tc_COMBAT = 1)
	build_type = MECHFAB
	build_path = /obj/item/mecha_parts/part/reticence_torso
	materials = list(MAT_METAL=20000,MAT_GLASS=10000,MAT_MIME=10000)
//	construction_time = 300
	category = "Reticence"

/datum/design/reticence/head
	name = "Exosuit Structure (Reticence head)"
	desc = "Used to build a Reticence head."
	id = "reticence_head"
	req_tech = list(Tc_COMBAT = 1)
	build_type = MECHFAB
	build_path = /obj/item/mecha_parts/part/reticence_head
	materials = list(MAT_METAL=10000,MAT_GLASS=5000,MAT_MIME=5000)
//	construction_time = 200
	category = "Reticence"

/datum/design/reticence/l_arm
	name = "Exosuit Structure (Reticence left arm)"
	desc = "Used to build a Reticence left arm."
	id = "reticence_larm"
	req_tech = list(Tc_COMBAT = 1)
	build_type = MECHFAB
	build_path = /obj/item/mecha_parts/part/reticence_left_arm
	materials = list(MAT_METAL=15000,MAT_MIME=5000)
//	construction_time = 200
	category = "Reticence"

/datum/design/reticence/r_arm
	name = "Exosuit Structure (Reticence right arm)"
	desc = "Used to build a Reticence right arm."
	id = "reticence_rarm"
	req_tech = list(Tc_COMBAT = 1)
	build_type = MECHFAB
	build_path = /obj/item/mecha_parts/part/reticence_right_arm
	materials = list(MAT_METAL=15000,MAT_MIME=5000)
//	construction_time = 200
	category = "Reticence"

/datum/design/reticence/l_leg
	name = "Exosuit Structure (Reticence left leg)"
	desc = "Used to build a Reticence left leg."
	id = "reticence_lleg"
	req_tech = list(Tc_COMBAT = 1)
	build_type = MECHFAB
	build_path =/obj/item/mecha_parts/part/reticence_left_leg
	materials = list(MAT_METAL=20000,MAT_MIME=5000)
//	construction_time = 200
	category = "Reticence"

/datum/design/reticence/r_leg
	name = "Exosuit Structure (Reticence right leg)"
	desc = "Used to build a Reticence right leg."
	id = "reticence_rleg"
	req_tech = list(Tc_COMBAT = 1)
	build_type = MECHFAB
	build_path = /obj/item/mecha_parts/part/reticence_right_leg
	materials = list(MAT_METAL=20000,MAT_MIME=5000)
//	construction_time = 200
	category = "Reticence"
