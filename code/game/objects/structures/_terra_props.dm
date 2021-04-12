//this file is for custom structures to add to gaem
//separate file for modularizement and avoiding merge conflix i am real person yes --LZ



//This is actually a turf, oh what the fuck!
/turf/space/crack //THIS DOES NOT WORK. FIX. FUCKER.  --LZ, to himself. What a wanker.
	name = "cracked earth"
	desc = "A crack in the floor, it probably exposes to space somewhere."
	icon_state = "crack"

/turf/space/crack/initialize()
	return

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


/********************************
* Spoopy Noticeboards
* because ooooo edgy spoopy stuff!
********************************/

/obj/structure/noticeboard/geostation
	notices = 5
	icon_state = "nboard05"

/obj/structure/noticeboard/geostation/New()
	//add some memos
	var/obj/item/weapon/paper/P = new()
	P.name = "Standard Shit, DO NOT REMOVE"
	P.info = "<br>Welcome to The Geostation. <br> There are a couple rules everyone must abide by. Failure to adhere to these rules will result in a write-up. Not trying to be a prick, but I need to impress on you all how serious you need to take your work.<br>1. Do not force the airlocks. Ever. There is no properly functioning atmos system on-board and canister shipments are few and far between. Wasting air is a huge no-no. <br>2.Do not carry any radio device that is set to our frequency out with you. This includes headsets. If you need to make a call out in the field, set the correct frequency to broadcast, and then set it back.<br>3. Do not leave the station without a kinetic accelerator on your person. You are difficult and expensive to replace. You are also expensive and time-consuming to recover in the event you die outside. <br>4. If you have a personality conflict with any of your partners, make a note in writing when you file your paperwork. All employees stationed here should know what company policy is for such events, and as such will not be posted here."
	P.stamped = list(/obj/item/weapon/stamp/rd)
	P.overlays = list("paper_stamp-rd")
	src.contents += P

	P = new()
	P.name = "Notice regarding the recent shipment - DO NOT REMOVE"
	P.info = "Yes, I understand saying \"recent\" will stop being accurate over the long term. <br><br>As you all probably know by now, this outpost has recently been shipped a stock of industrial explosives. To be perfectly clear, these ARE NOT for mining purposes. These are for the exact opposite. Due to a recent sighting of abnormal xeno behavior in your sector, it has been decided that it may in the future become necessary to deny hostile lifeforms access to the facility. The bundle has instructions on how to utilize these explosives safely and effectively. In addition, all crewmembers are being assigned a service weapon that they must carry on them at all times. IT IS IMPORTANT THAT YOU DO NOT ASSUME THIS WEAPON CAN REPLACE YOUR KINETIC ACCELERATORS. The weapons you each will be assigned are NOT effective on the native wildlife whereas the kinetic accelerators ARE."
	P.stamped = list(/obj/item/weapon/stamp/rd)
	P.overlays = list("paper_stamp-rd")
	src.contents += P

	P = new()
	P.name = "Memo: Xenos and Explosives"
	P.info = "It has come to my attention that the station crew have recently been attacked by- and subsequently quashed- a sudden xeno infestation. While I commend you for putting this down without use of the explosives you were sent for the purpose of route denial and am legitimately impressed by it, I can't help but notice that your reported stock of explosives has diminished despite not being called for. I understood a few field tests on the day they were delivered. I do not understand or condone their use for recreation in light of the recent victory-- which is what I can only assume is what you all are doing. I appreciate each and every one of you, but our operation is of utmost importance and we can not afford to disregard safety. <br><br>You are all doing great work, and I am overjoyed you are all alive. Please post this on the noticeboard."
	P.stamped = list(/obj/item/weapon/stamp/rd)
	P.overlays = list("paper_stamp-rd")
	src.contents += P

	P = new()
	P.name = "URGENT"
	P.info = "I'm posting this on the noticeboard before our command rep gets here and posts something about it, because we can't fuckin afford to wait on this. We need to blow all our tunnels. Those xenos we killed last month weren't here to colonize us or whatevershit. They were running. I'm going to start doing what I can; when your cryo wears off, you need to start doing the same. DO NOT ENGAGE NATIVE WILDLIFE UNLESS ABSOLUTELY NECESSARY.<br><br>-Rick"
	src.contents += P

	P = new()
	P.name = "report"
	P.info = "I destroyed the bluespace beacon. I had to; if command tries to come here the usual way they risk getting hit too. And I don't know what that thing's truly capable of, for all I know it could follow it back to base. <br><br>Rick and Bob are both dead. I couldn't explain how. They just... one minute they were in one place, and then their gps stopped tracking. When I went to their last location to find them, they weren't there. <br>They were everywhere else. <br><br>I'm posting this to the notice board in case command manages to get back here to let them know what happened. Assuming, of course, they want to after they consider what they already know. <br>I hid the access code. Yes, I know the access code. I also know that the control module it goes to is in what's left of Terralabs. Oh, I know about that too. I know how to move among it's current inhabitants without being shot at. You'll be able to extract it with your manpower, I'm sure.<br><br>And if someone from Nanotrasen finds this before command does- cuz god forbid they are stupid enough to try and set up a mining base here- leave this system. It probably never left. And don't try to get to Terralabs. Whatever happened there pissed it off. That outpost is proof."
	src.contents += P



//shuttle engine shenanigans
/obj/structure/shuttle/engine/propulsion/precise
	fiyah = /obj/item/projectile/fire_breath/straight/shuttle_exhaust

/obj/item/projectile/fire_breath/straight/shuttle_exhaust
	fire_blast_type = /obj/effect/fire_blast/no_spread/shuttle
/obj/effect/fire_blast/no_spread/shuttle
	icon = 'icons/effects/fireblue.dmi'

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



//=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
//					SPAWNERS!
//=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
/obj/abstract/map/spawner/hazardvest //random hazard vest spawn
	name = "random hazard vest"
	amount = 1 //DON'T FUCKING CHANGE THIS REEE
	chance = 100 //only spawns one, and always spawns one.
	to_spawn = list(
		/obj/item/clothing/suit/storage/hazardvest
	)
	/* This list will contain, once I program them in, all of the special vests from the paracode.
	They will be something like:
		/obj/item/clothing/suit/storage/hazardvest/terraform
		/obj/item/clothing/suit/storage/hazardvest/terraform/addict
		/obj/item/clothing/suit/storage/hazardvest/lz
		/obj/item/clothing/suit/storage/hazardvest/doorkeeper
		/obj/item/clothing/suit/storage/hazardvest/tauka (yes even though he's a faggort)
		/obj/item/clothing/suit/storage/hazardvest/qui
	They will have either two or three lines to double/triple their weight unless they are one of the OP ones or the base one. Yes, the stock vanilla one as defined above is still going to be on the list.
	may make a ../hazardvest/highrisk spawner that has loaded equivalents if I feel like it.
	*/

//buttes