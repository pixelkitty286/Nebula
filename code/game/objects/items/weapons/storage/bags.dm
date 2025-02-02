/*
	Represents flexible bags that expand based on the size of their contents.
*/
/obj/item/storage/bag
	allow_quick_gather = 1
	allow_quick_empty = 1
	use_to_pickup = 1
	slot_flags = SLOT_LOWER_BODY
	material = /decl/material/solid/organic/plastic
	obj_flags = OBJ_FLAG_HOLLOW

/obj/item/storage/bag/handle_item_insertion(obj/item/W, prevent_warning = 0)
	. = ..()
	if(.) update_w_class()

/obj/item/storage/bag/remove_from_storage(obj/item/W, atom/new_location)
	. = ..()
	if(.) update_w_class()

/obj/item/storage/bag/can_be_inserted(obj/item/W, mob/user, stop_messages = 0)
	var/mob/living/carbon/human/H = ishuman(user) ? user : null // if we're human, then we need to check if bag in a pocket
	if(istype(src.loc, /obj/item/storage) || H?.is_in_pocket(src))
		if(!stop_messages)
			to_chat(user, SPAN_NOTICE("Take \the [src] out of [istype(src.loc, /obj) ? "\the [src.loc]" : "the pocket"] first."))
		return 0 //causes problems if the bag expands and becomes larger than src.loc can hold, so disallow it
	. = ..()

/obj/item/storage/bag/proc/update_w_class()
	w_class = initial(w_class)
	for(var/obj/item/I in contents)
		w_class = max(w_class, I.w_class)

	var/cur_storage_space = storage_space_used()
	while(BASE_STORAGE_CAPACITY(w_class) < cur_storage_space)
		w_class++

/obj/item/storage/bag/get_storage_cost()
	var/used_ratio = storage_space_used()/max_storage_space
	return max(BASE_STORAGE_COST(w_class), round(used_ratio*BASE_STORAGE_COST(max_w_class), 1))

// -----------------------------
//          Trash bag
// -----------------------------
/obj/item/storage/bag/trash
	name = "trash bag"
	desc = "It's the heavy-duty black polymer kind. Time to take out the trash!"
	icon = 'icons/obj/items/storage/trashbag.dmi'
	icon_state = "trashbag"
	item_state = "trashbag"

	w_class = ITEM_SIZE_SMALL
	max_w_class = ITEM_SIZE_HUGE //can fit a backpack inside a trash bag, seems right
	max_storage_space = DEFAULT_BACKPACK_STORAGE
	can_hold = list() // any

/obj/item/storage/bag/trash/update_w_class()
	..()
	update_icon()

/obj/item/storage/bag/trash/on_update_icon()
	. = ..()
	switch(w_class)
		if(2) icon_state = "[initial(icon_state)]"
		if(3) icon_state = "[initial(icon_state)]1"
		if(4) icon_state = "[initial(icon_state)]2"
		if(5 to INFINITY) icon_state = "[initial(icon_state)]3"

/obj/item/storage/bag/trash/advanced
	name = "trash bag of holding"
	max_storage_space = 56
	desc = "The latest and greatest in custodial convenience, a trashbag that is capable of holding vast quantities of garbage."
	icon_state = "bluetrashbag"
	material = /decl/material/solid/organic/plastic
	matter = list(
		/decl/material/solid/metal/gold = MATTER_AMOUNT_REINFORCEMENT,
		/decl/material/solid/metal/uranium = MATTER_AMOUNT_TRACE
	)
	origin_tech = @'{"exoticmatter":5,"materials":6}'

/obj/item/storage/bag/trash/advanced/attackby(obj/item/W, mob/user)
	if(istype(W, /obj/item/storage/backpack/holding) || istype(W, /obj/item/storage/bag/trash/advanced))
		to_chat(user, "<span class='warning'>The spatial interfaces of the two devices conflict and malfunction.</span>")
		qdel(W)
		return 1
	return ..()

// -----------------------------
//        Plastic Bag
// -----------------------------

/obj/item/storage/bag/plasticbag
	name = "plastic bag"
	desc = "It's a very flimsy, very noisy alternative to a bag."
	icon = 'icons/obj/items/storage/plasticbag.dmi'
	icon_state = "plasticbag"
	item_state = "plasticbag"

	w_class = ITEM_SIZE_TINY
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = DEFAULT_BOX_STORAGE
	can_hold = list() // any

// -----------------------------
//           Cash Bag
// -----------------------------

/obj/item/storage/bag/cash
	name = "cash bag"
	icon = 'icons/obj/items/storage/cashbag.dmi'
	icon_state = "cashbag"
	desc = "A bag for carrying lots of cash. It's got a big dollar sign printed on the front."
	max_storage_space = 100
	max_w_class = ITEM_SIZE_HUGE
	w_class = ITEM_SIZE_SMALL
	can_hold = list(/obj/item/coin, /obj/item/cash)
	material = /decl/material/solid/organic/leather/synth

/obj/item/storage/bag/cash/filled/Initialize()
	. = ..()
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	new /obj/item/cash/c1000(src)
	make_exact_fit()
