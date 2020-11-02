//testing to get this goddamn thing working properly
/obj/machinery/power/port_gen/pacman/pingas
	name = "Pingas Wheel Generator"
	desc = "A portable generator for emergency backup power. It is rumored that this model generates its power with a disc that never stops spinning."
//	icon = 'icons/obj/power2.dmi'    //So, funny story! This line is not presently necessary, due to VG's code using the same sprite that I had initially set it to on paracode, after a change they made to use a new sprite. I had reverted this pingas wheel only in paracode, but the only reason I'm leaving this callout here instead of outright removing it is in the event we want to change it AGAIN into a different sprite to differentiate it HERE. Discuss! lol long commant    --LZ's dumb ass
	power_gen = 13220

/obj/machinery/power/port_gen/pacman/pingas/HasFuel()
	return 1

/obj/machinery/power/port_gen/pacman/pingas/UseFuel()
 	return

/obj/machinery/power/port_gen/pacman/pingas/DropFuel()
 	return

//This machine is at no time ever supposed to produce over 13220. This next block does exactly that but the inherited GUI doesn't reflect this behavior entirely.
/obj/machinery/power/port_gen/pacman/pingas/process()
	if(active && HasFuel() && !crit_fail && anchored && powernet)
		add_avail(power_gen)
		UseFuel()
		src.updateDialog()

	else
		active = 0
		icon_state = initial(icon_state)
		handleInactive()
//This machine used to output 5025. HOWEVER, I realized that since this became a thing in our code,
// vanilla pacmans got their outputs bumped WAY the fuck up. I have increased it to make this less useless and gaggy.




//AHEM FOOLS
//This entire file was cargoculted out of the paracode edition of Terrastation. It was hacky there, it is probably doubly so here. Because clearly LZ can't code for balls :D
//	All of the commentary from before has been left alone here, unless a fundamental change was necessary.		--LZ