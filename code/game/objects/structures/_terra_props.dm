//this file is for custom structures to add to gaem
//separate file for modularizement and avoiding merge conflix i am real person yes --LZ


/********************************
* suplexed machines: they are machines that have been suplexed.
* hmm yes the floor here is made out of floor
* they serve to get in the way and provide random materials
********************************/

/obj/structure/suplexd //base object. Can be used as is I guess but only yields 1 rod and 1 metal
	name = "suplexed machinery"
	desc = "Someone dun fuck'd this ting up good!"
	icon = 'icons/obj/terra/t_props.dmi'
	icon_state = "supmach"
	density = 1
	var/busy = 0
	var/loot = list(/obj/item/stack/rods, /obj/item/stack/sheet/metal)

/obj/structure/suplexd/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(iswelder(W) && !busy)
		var/obj/item/weapon/weldingtool/WT = W
		if(!WT.remove_fuel(1,user))
			return
		playsound(loc, W.usesound, 75, 1)
		user.visible_message("<span class='warning'>[user] starts slicing \the [src].</span>","<span class='notice'>You start trying to cut this piece of shit into scrap metal.</span>")
		busy = 1
		if(do_after(user, src, 20 * W.toolspeed))
			playsound(loc, W.usesound, 75, 1)
			user.visible_message("<span class='warning'>[user] finishes scrapping \the [src].</span>", "<span class='notice'>You finish cutting \the [src] into tiny bits.</span>")
			busy = 0
			qdel(src)
			return
		else
			busy = 0
	else
		user.visible_message("<span class='warning'>[user] bashes \the [src] like a retard.</span>","<span class='notice'>You whack the [src] with whatever the fuck you were holding.</span>")

//this needs a proc to drop its loot table here

//this should also be yeeted if hit by a hulk/admin bus/equivalent fuckery; hitting a wall should explode it into ~5 different metal rod items that get tossed nearby a short ways

//also also the random small and random large extensions

//end suplexed machines

/********************************
* Burning Barrel
* because barrelfires are cool yes
********************************/

/obj/structure/barrelfire
	name = "burning barrel"
	desc = "Strangely cozy, but the flames feel somewhat unnatural. What the hell is burning in there?"
	icon = 'icons/obj/terra/t_props.dmi'
	icon_state = "barrel1"
	density = 1
	//anchored = 1 //needed?