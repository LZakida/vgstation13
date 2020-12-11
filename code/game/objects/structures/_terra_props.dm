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
	anchored = 1 //these are kinda planted into the ground yes?
	var/randomize = 0 //this var will be checked to see if it needs to randomize it's loot and icon. This is useful if you need to have machines drop specific things, for whatever reason. Probably mapping.
	var/thicc = 0 //if 1,rando will roll a 'big' machine instead of a 'small' one. also, longer decon time
	var/busy = 0
	var/loot = list(/obj/item/stack/rods, /obj/item/stack/sheet/metal)

/obj/structure/suplexd/thicc //default is for debug. Don't use this in a map without editing something in its var list pls
	icon_state = "supmach11"
	thicc = 1
	opacity = 1

/obj/structure/suplexd/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(iswelder(W) && !busy)
		var/obj/item/weapon/weldingtool/WT = W
		if(!WT.remove_fuel(1,user))
			return
		playsound(loc, W.usesound, 75, 1)
		var/dtiem
		if(thicc)
			dtiem = 40
		else
			dtiem = 20
		user.visible_message("<span class='warning'>[user] starts slicing \the [src].</span>","<span class='notice'>You start trying to cut this piece of shit into scrap metal.</span>")
		busy = 1
		if(do_after(user, src, dtiem * W.toolspeed))
			playsound(loc, W.usesound, 75, 1)
			user.visible_message("<span class='warning'>[user] finishes scrapping \the [src].</span>", "<span class='notice'>You finish cutting \the [src] into tiny bits.</span>")
			busy = 0
			can_has_loots()
			qdel(src)
			return
		else
			busy = 0
	else
		user.visible_message("<span class='warning'>[user] bashes \the [src] like a retard.</span>","<span class='notice'>You whack the [src] with whatever the fuck you were holding.</span>")

/obj/structure/suplexd/proc/can_has_loots()
	for(var/L in loot)
		new L(loc)
/obj/structure/suplexd/Destroy()
	new /obj/item/stack/rods(loc)
	..()


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
	anchored = 1
	light_range = 5
	light_color = LIGHT_COLOR_ORANGE //until I find a more specific color, should one be necessary
	//these two light vars might be a hack compared to how these functioned in the goon leak I stole them from. The former code snippet I documented pre-rebase is documented below.
		/* what follows is the original code pulled from goon. It doesn't work here. Because codebase differences. and stuff.
		*	var/datum/particleSystem/barrelSmoke/particles
		*	var/datum/light/light
		*
		*	New()
		*		particles = particleMaster.SpawnSystem(new /datum/particleSystem/barrelSmoke(src))
		*		light = new /datum/light/point
		*		light.attach(src)
		*		light.set_brightness(1)
		*		light.set_color(0.5, 0.3, 0)
		*		light.enable()
		*
		*		..()
		*
		*	Del()
		*		particleMaster.RemoveSystem(/datum/particleSystem/barrelSmoke, src)
		*		..()
		*A temporary solution will be implemented below. It will be expanded upon/improved/replaced at some point. maybe.*/
	//at which point it defined the two light vars above


//=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
//					BUTT STUFF!
//=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

/obj/effect/decal/froge
	name = "Get Out frog"
	desc = "It wants you to get out."
	icon = 'icons/obj/terra/buttstuff.dmi'
	icon_state = "frogout"
	anchored = 1
	opacity = 0
	density = 1
	light_range = 3
	var/out_get //this variable is for being able to define a destination. Previously it was hardcoded to go to only one place. Now it can be modified to yeet elsewhere. Yay.
//to be completed. At least we can now tell people to get out

//buttes