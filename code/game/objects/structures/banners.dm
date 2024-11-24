/obj/structure/banner_frame
	name = "banner frame"
	desc = "A sturdy frame suitable for hanging a banner."
	icon = 'icons/obj/structures/banner_frame.dmi'
	icon_state = "banner_stand_preview"
	material = /decl/material/solid/organic/wood
	color = /decl/material/solid/organic/wood::color
	anchored = TRUE
	density = FALSE
	opacity = FALSE
	atom_flags = ATOM_FLAG_CLIMBABLE
	layer = ABOVE_WINDOW_LAYER
	obj_flags = OBJ_FLAG_ANCHORABLE
	tool_interaction_flags = (TOOL_INTERACTION_ANCHOR | TOOL_INTERACTION_DECONSTRUCT)
	material_alteration = MAT_FLAG_ALTERATION_NAME | MAT_FLAG_ALTERATION_COLOR
	max_health = 50
	var/force_south_facing = TRUE
	var/base_icon_state = "banner_stand"
	/// Reference to any banner currently hung on the frame.
	var/obj/item/banner/banner

/obj/structure/banner_frame/set_dir(ndir)
	return ..(force_south_facing ? SOUTH : ndir)

/obj/structure/banner_frame/Initialize(ml, _mat, _reinf_mat)
	if(ispath(banner))
		set_banner(new banner(src))
	. = ..()
	update_icon()

/obj/structure/banner_frame/proc/set_banner(var/new_banner)
	if(banner == new_banner)
		return
	banner = new_banner
	if(banner)
		name = banner.name
		desc = "[initial(desc)] [banner.hung_desc]"
	else
		name = initial(name)
		desc = initial(desc)
	update_icon()

/obj/structure/banner_frame/attack_hand(mob/user)
	if(banner && user.check_dexterity(DEXTERITY_HOLD_ITEM))
		user.put_in_hands(banner)
		var/old_banner = banner
		set_banner(null)
		user.visible_message(SPAN_NOTICE("\The [user] removes \the [old_banner] from \the [src]."), SPAN_NOTICE("You remove \the [old_banner] from \the [src]."), SPAN_NOTICE("You hear the rustling of fabric."))
		return TRUE
	return ..()

/obj/structure/banner_frame/attackby(obj/item/O, mob/user)
	if(istype(O, /obj/item/banner))
		if(banner)
			to_chat(user, SPAN_WARNING("There is already a banner hung on \the [src]."))
			return TRUE
		if(user.try_unequip(O, src))
			user.visible_message(SPAN_NOTICE("\The [user] hangs \the [O] from \the [src]."), SPAN_NOTICE("You hang \the [O] from \the [src]."), SPAN_NOTICE("You hear the rustling of fabric."))
			set_banner(O)
		return TRUE
	return ..()

/obj/structure/banner_frame/dump_contents(atom/forced_loc = loc, mob/user)
	if(istype(banner))
		banner.dropInto(forced_loc)
		banner = null
	. = ..()

/obj/structure/banner_frame/on_update_icon()
	. = ..()

	icon_state = base_icon_state
	if(!istype(banner))
		return

	var/image/I = image(banner.icon, "[banner.icon_state]-hanging")
	I.appearance_flags |= RESET_COLOR
	I.color = banner.color
	add_overlay(I)

	if(banner.trim_color)
		I = image(banner.icon, "[banner.icon_state]-trim")
		I.appearance_flags |= RESET_COLOR
		I.color = banner.trim_color
		add_overlay(I)

	for(var/decal in banner.decals)
		I = image(banner.decal_icon, decal)
		I.appearance_flags |= RESET_COLOR
		I.color = banner.decals[decal]
		add_overlay(I)

/obj/structure/banner_frame/Destroy()
	if(istype(banner))
		QDEL_NULL(banner)
	return ..()

var/global/list/_banner_decals = list()

/obj/item/banner
	name = "banner"
	desc = "A furled-up banner."
	icon = 'icons/obj/items/banners/banner.dmi'
	icon_state = "banner"
	material = /decl/material/solid/organic/cloth
	color = /decl/material/solid/organic/cloth::color
	max_health = 20
	material_alteration = MAT_FLAG_ALTERATION_COLOR | MAT_FLAG_ALTERATION_NAME
	w_class = ITEM_SIZE_NORMAL
	var/hung_desc = "The banner is rather unremarkable."
	var/name_prefix
	var/decal_icon = 'icons/obj/items/banners/banner_symbols.dmi'
	var/list/decals
	var/trim_color

// TODO: PROPER EMBROIDERY AND ITEM DECORATION.
/obj/item/banner/attackby(obj/item/used_item, mob/user)

	if(istype(used_item, /obj/item/stack/material/thread))

		if((!decal_icon || length(decals)) && trim_color)
			to_chat(user, SPAN_WARNING("\The [src] is already as decorated as it can be."))
			return TRUE

		var/obj/item/stack/material/thread/used_stack = used_item
		if(used_stack.get_amount() < 5)
			to_chat(user, SPAN_WARNING("You need at least five lengths of thread to embroider a banner."))
			return TRUE

		if(!trim_color)
			user.visible_message("\The [user] sews a trim onto \the [src].")
			trim_color = used_item.color
			used_stack.use(5)
			return TRUE

		if(decal_icon && !length(decals))
			if(!global._banner_decals[decal_icon])
				global._banner_decals[decal_icon] = icon_states(decal_icon)
			var/decal_color = used_item.color
			var/decal_to_sew = input(user, "Which symbol do you wish to add to \the [src]?", "Banner Symbol") as null|anything in global._banner_decals[decal_icon]
			if(decal_to_sew && CanPhysicallyInteract(user) && !length(decals) && user.get_active_held_item() == used_item && used_stack.use(5))
				decals[decal_to_sew] = decal_color
			return TRUE

	. = ..()

// 'woven grass banner', 'forked linen banner'
/obj/item/banner/update_name()
	. = ..()
	SetName("[name_prefix] [name]")

/obj/item/banner/forked
	name_prefix = "forked"
	hung_desc = "The banner splits into two tails at the bottom."
	icon = 'icons/obj/items/banners/banner_forked.dmi'
	decal_icon = null // Current decals do not work nicely with the fork

/obj/item/banner/pointed
	name_prefix = "pointed"
	hung_desc = "The banner narrows to a point at the bottom."
	icon = 'icons/obj/items/banners/banner_pointed.dmi'

/obj/item/banner/rounded
	name_prefix = "rounded"
	hung_desc = "The banner has a rounded lower edge."
	icon = 'icons/obj/items/banners/banner_rounded.dmi'

/obj/item/banner/square
	name_prefix = "square"
	hung_desc = "The banner has a squared-off lower edge."
	icon = 'icons/obj/items/banners/banner_square.dmi'

/obj/item/banner/tasselled
	name_prefix = "tasselled"
	hung_desc = "The banner has several dangling tassels at the bottom."
	icon = 'icons/obj/items/banners/banner_tasselled.dmi'

/obj/item/banner/woven
	name_prefix = "woven"
	icon = 'icons/obj/items/banners/banner_woven.dmi'
	material = /decl/material/solid/organic/plantmatter/grass/dry
	color = /decl/material/solid/organic/plantmatter/grass/dry::color
	material_alteration = MAT_FLAG_ALTERATION_COLOR | MAT_FLAG_ALTERATION_NAME | MAT_FLAG_ALTERATION_DESC
	hung_desc = "The woven banner is rustic and uneven."

/obj/item/banner/green
	name = "green banner"
	paint_color = COLOR_GREEN
	color = COLOR_GREEN

/obj/item/banner/red
	name = "red banner"
	paint_color = COLOR_RED
	color = COLOR_RED

/obj/item/banner/blue
	name = "blue banner"
	paint_color = COLOR_BLUE
	color = COLOR_BLUE

// Mapping helpers below.
/obj/structure/banner_frame/blue
	banner = /obj/item/banner/blue
	color = /obj/item/banner/blue::color // Mapping preview colour.

/obj/structure/banner_frame/red
	banner = /obj/item/banner/red
	color = /obj/item/banner/red::color

/obj/structure/banner_frame/green
	banner = /obj/item/banner/green
	color = /obj/item/banner/green::color

// A wall-mounted banner frame with no stand.
/obj/structure/banner_frame/wall
	name = "hanging banner frame"
	desc = "A sturdy frame suitable for hanging a banner."
	icon_state = "banner_hanging_preview"
	base_icon_state = "banner_hanging"
	directional_offset = @'{"NORTH":{"y":-32},"SOUTH":{"y":-32},"EAST":{"x":-32},"WEST":{"x":-32}}'
	force_south_facing = FALSE

/obj/structure/banner_frame/wall/ebony
	material = /decl/material/solid/organic/wood/ebony
	color = /decl/material/solid/organic/wood/ebony::color

/obj/structure/banner_frame/wall/ebony/red
	banner = /obj/item/banner/red
	color = /obj/item/banner/red::color // Mapping preview colour.

/obj/structure/banner_frame/wall/ebony/blue
	banner = /obj/item/banner/blue
	color = /obj/item/banner/blue::color

/obj/structure/banner_frame/wall/ebony/green
	banner = /obj/item/banner/green
	color = /obj/item/banner/green::color

/obj/structure/banner_frame/wall/ebony/woven
	banner = /obj/item/banner/woven
	color = /obj/item/banner/woven::color

// Debug item.
/obj/structure/banner_frame/random/Initialize(ml, _mat, _reinf_mat)
	. = ..()
	var/banner_type = pick(list(
		/obj/item/banner/pointed,
		/obj/item/banner/rounded,
		/obj/item/banner/square,
		/obj/item/banner/tasselled,
		/obj/item/banner/woven
	))
	banner = new banner_type(src)
	banner.set_color(get_random_colour())
	banner.trim_color = get_random_colour()
	if(banner.decal_icon)
		if(!global._banner_decals[banner.decal_icon])
			global._banner_decals[banner.decal_icon] = icon_states(banner.decal_icon)
		var/decal = pick(global._banner_decals[banner.decal_icon])
		var/decal_color = get_random_colour()
		LAZYSET(banner.decals, decal, decal_color)
	update_icon()
