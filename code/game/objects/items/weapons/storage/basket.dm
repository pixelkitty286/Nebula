/obj/item/basket
	name = "basket"
	desc = "A simple woven basket. Very rustic."
	icon = 'icons/obj/items/storage/baskets/basket_round.dmi'
	icon_state = ICON_STATE_WORLD
	w_class = ITEM_SIZE_HUGE
	material_alteration = MAT_FLAG_ALTERATION_COLOR | MAT_FLAG_ALTERATION_NAME | MAT_FLAG_ALTERATION_DESC
	storage = /datum/storage/basket
	material = /decl/material/solid/organic/plantmatter/grass/dry
	var/name_prefix = "woven"

/obj/item/basket/update_name()
	. = ..()
	SetName("[name_prefix] [name]")

/obj/item/basket/large
	slot_flags = SLOT_BACK
	icon = 'icons/obj/items/storage/baskets/basket_large.dmi'
	name_prefix = "large woven"
	storage = /datum/storage/basket/large
	slowdown_general = 1 // Large and unwieldly
