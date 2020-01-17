/obj/structure/closet/secure_closet/clown
	name = "clown's locker"
	req_access = list()
	icon_state = "clownsecure1"
	icon_closed = "clownsecure"
	icon_locked = "clownsecure1"
	icon_opened = "clownsecureopen"
	icon_broken = "clownsecurebroken"
	icon_off = "clownsecureoff"


/obj/structure/closet/secure_closet/clown/atoms_to_spawn()
	return list(
		/obj/item/weapon/storage/backpack/clown,
		/obj/item/clothing/under/rank/clown,
		/obj/item/clothing/shoes/clown_shoes,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/clothing/mask/gas/clown_hat,
		/obj/item/weapon/bikehorn,
		/obj/item/toy/waterflower,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/bottleofbanana,
		/obj/item/seeds/bananaseed,
	)


/obj/structure/closet/secure_closet/mime
	name = "mime's locker"
	req_access = list()
	icon_state = "mimesecure1"
	icon_closed = "mimesecure"
	icon_locked = "mimesecure1"
	icon_opened = "mimesecureopen"
	icon_broken = "mimesecurebroken"
	icon_off = "mimesecureoff"



/obj/structure/closet/secure_closet/mime/atoms_to_spawn()
	return list(
		/obj/item/clothing/head/beret,
		/obj/item/clothing/mask/gas/mime,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/clothing/under/mime,
		/obj/item/clothing/suit/suspenders,
		/obj/item/clothing/gloves/white,
		/obj/item/clothing/shoes/black,
		/obj/item/weapon/storage/backpack/mime,
		/obj/item/toy/crayon/mime,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/bottleofnothing,
		/obj/item/weapon/cane
	)