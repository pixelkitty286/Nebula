// TODO: skill check on melee/ranged hit to show bullseye/heart shot/etc
// TODO: craft the base frame, add cloth/dry grass to replace dummy, remove dummy on damage.
// TODO: add a modern-style version, merge with and replace the magnet dummies?

/obj/structure/training_dummy
	name       = "training dummy"
	desc       = "A simple stand used to prop up a training dummy for practice."
	icon       = 'icons/obj/structures/training_dummy.dmi'
	icon_state = ICON_STATE_WORLD
	anchored   = TRUE
	density    = TRUE
	material   = /decl/material/solid/organic/wood/oak
	material_alteration = MAT_FLAG_ALTERATION_ALL
	var/decl/material/dummy_mat = /decl/material/solid/organic/plantmatter/grass/dry

/obj/structure/training_dummy/Initialize(ml, _mat, _reinf_mat)
	if(ispath(dummy_mat))
		dummy_mat = GET_DECL(dummy_mat)
	. = ..()
	update_icon()

/obj/structure/training_dummy/on_update_icon()
	. = ..()
	if(dummy_mat)
		add_overlay(overlay_image(icon, "[icon_state]-dummy", dummy_mat.color, RESET_COLOR))

/obj/structure/training_dummy/archery
	name       = "archery butt"
	desc       = "A heavy circular target used for practicing archery."
	icon       = 'icons/obj/structures/archery_butt.dmi'
