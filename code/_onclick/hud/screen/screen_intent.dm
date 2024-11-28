/obj/screen/intent
	name       = "intent"
	icon       = 'icons/mob/screen/styles/intents.dmi'
	icon_state = "intent_help"
	screen_loc = ui_acti

/obj/screen/intent/proc/get_intent_state_map()
	var/static/list/intent_state_map = list(
		GET_DECL(I_DISARM) = "intent_disarm",
		GET_DECL(I_HELP)   = "intent_help",
		GET_DECL(I_HARM)   = "intent_harm",
		GET_DECL(I_GRAB)   = "intent_grab"
	)
	return intent_state_map

/obj/screen/intent/handle_click(mob/user, params)
	var/mob/owner = owner_ref?.resolve()
	if(!istype(owner) || QDELETED(owner) || user != owner || !params)
		return
	var/list/P = params2list(params)
	var/icon_x = text2num(P["icon-x"])
	var/icon_y = text2num(P["icon-y"])
	if(icon_x <= world.icon_size/2)
		if(icon_y <= world.icon_size/2)
			owner.set_intent(I_HARM)
		else
			owner.set_intent(I_HELP)
	else if(icon_y <= world.icon_size/2)
		owner.set_intent(I_GRAB)
	else
		owner.set_intent(I_DISARM)
	update_icon()

/obj/screen/intent/on_update_icon()
	var/mob/owner = owner_ref?.resolve()
	if(istype(owner) && !QDELETED(owner))
		var/list/intent_state_map = get_intent_state_map()
		icon_state = intent_state_map[owner.get_intent()] || intent_state_map[intent_state_map[1]]
	else
		icon_state = initial(icon_state)

/obj/screen/intent/binary
	icon_state = "intent_harm"

/obj/screen/intent/binary/get_intent_state_map()
	var/static/list/intent_state_map = list(
		GET_DECL(I_DISARM) = "intent_help",
		GET_DECL(I_HELP)   = "intent_help",
		GET_DECL(I_HARM)   = "intent_harm",
		GET_DECL(I_GRAB)   = "intent_harm"
	)
	return intent_state_map
