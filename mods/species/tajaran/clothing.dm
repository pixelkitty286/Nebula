//Aurora cloathing


//Jacket & non void suits

/obj/item/clothing/suit/tajaran
	name = "heavy furs"
	desc = "A traditional Zhan-Khazan garment."
	icon = 'mods/species/tajaran/icons/clothing/suits/zhan_furs.dmi'
	icon_state = ICON_STATE_WORLD
	bodytype_equip_flags = BODY_FLAG_FELINE

//Coats no hoods

/obj/item/clothing/suit/storage/toggle/tajaran/coat/medical
	name = "Adhomian medical coat"
	desc = "A sterile insulated coat made of leather stitched over fur."
	icon = 'mods/species/tajaran/icons/clothing/coats/medcoat.dmi'
	icon_state = ICON_STATE_WORLD
	blood_overlay_type = "coat"
	body_parts_covered = SLOT_UPPER_BODY|SLOT_ARMS
	flags_inv = HIDESUITSTORAGE
	armor = ARMOR_BIO_MINOR


/obj/item/clothing/suit/storage/tajaran/wool
	name = "adhomian wool coat"
	desc = "An adhomian coat, this one is a design commonly found among the Rhazar'Hrujmagh people."
	icon = 'mods/species/tajaran/icons/clothing/coats/zhan_coat.dmi'
	icon_state = ICON_STATE_WORLD


/obj/item/clothing/suit/storage/tajaran/raakti_shariim
	name = "\improper Raakti Shariim coat"
	desc = "A blue adhomian wool coat with lilac purple accents and pale-gold insignia, signifying a Constable of the NKA's Raakti Shariim."
	icon = 'mods/species/tajaran/icons/clothing/coats/raakti_shariim_coat.dmi'
	icon_state = ICON_STATE_WORLD


/obj/item/clothing/suit/storage/toggle/tajaran/coat
	name = "tajaran naval coat"
	desc = "A thick wool coat from Adhomai."
	icon = 'mods/species/tajaran/icons/clothing/coats/navalcoat.dmi'
	icon_state = ICON_STATE_WORLD


//Cloaks
/obj/item/clothing/suit/storage/toggle/tajaran/cloak
	name = "Adhomian maroon cloak"
	desc = "A simple maroon colored Adhomian cloak."
	icon = 'mods/species/tajaran/icons/clothing/coats/maroon_cloak.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_UPPER_BODY
	hood = /obj/item/clothing/head/hood/tajaran/cloak

/obj/item/clothing/suit/storage/toggle/tajaran/cloak/gruff
	name = "Gruff cloak"
	desc = "A cloak designated for the lowest classes of tajara."
	icon = 'mods/species/tajaran/icons/clothing/coats/taj_cloak.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_ARMS|SLOT_LEGS
	flags_inv = HIDETAIL
	hood = /obj/item/clothing/head/hood/tajaran/cloak/gruff

/obj/item/clothing/suit/storage/toggle/tajaran/cloak/amohda
	name = "Amohdan cloak"
	desc = "Originally used by the Amohdan swordsmen before the First Revolution, this cloak is now commonly worn by the island population."
	icon = 'mods/species/tajaran/icons/clothing/coats/amohda_cloak.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY
	hood = /obj/item/clothing/head/hood/tajaran/cloak/amohda

/obj/item/clothing/suit/storage/toggle/tajaran/cloak/winter
	name = "Adhomian winter cloak"
	desc = "A simple wool cloak used during the early days of the lesser winter."
	icon = 'mods/species/tajaran/icons/clothing/coats/winter_cloak.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_ARMS|SLOT_LEGS
	min_cold_protection_temperature = T0C - 60
	cold_protection = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_ARMS|SLOT_LEGS
	hood = /obj/item/clothing/head/hood/tajaran/cloak/winter

/obj/item/clothing/suit/storage/toggle/tajaran/cloak/royalist
	name = "Adhomian royalist cloak"
	desc = "An Adhomian cloak with an asymmetric design. The symbol of the New Kingdom of Adhomai is at its back."
	icon = 'mods/species/tajaran/icons/clothing/coats/royalist_cloak.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_ARMS|SLOT_LEGS
	hood = /obj/item/clothing/head/hood/tajaran/cloak/royalist

/obj/item/clothing/suit/storage/toggle/tajaran/cloak/fancy
	name = "Fancy adhomian cloak"
	desc = "A fancy black Adhomian cloak."
	icon = 'mods/species/tajaran/icons/clothing/coats/hb_cloak.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_ARMS|SLOT_LEGS
	hood = /obj/item/clothing/head/hood/tajaran/cloak/fancy


//Hoods
/obj/item/clothing/head/hood/tajaran/cloak
	name  = "Adhomian maroon cloak hood"
	desc = "A hood attached to a Maroon cloak"
	icon = 'mods/species/tajaran/icons/clothing/hoods/maroon_cloakhood.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_HEAD
	flags_inv = HIDEEARS|BLOCK_HEAD_HAIR

/obj/item/clothing/head/hood/tajaran/cloak/gruff
	name = "Gruff cloak hood"
	desc = "A hood attached to a Gruff cloak"
	desc = "A hood designated for the lowest classes of tajara."
	icon = 'mods/species/tajaran/icons/clothing/hoods/taj_cloakhood.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_HEAD
	flags_inv = HIDEEARS|BLOCK_HEAD_HAIR

/obj/item/clothing/head/hood/tajaran/surgery
	name = "Adhomian surgeon mask"
	desc = "A surgical mask attached to a surgeon garb."
	icon = 'mods/species/tajaran/icons/clothing/hoods/tajscrubs_hood.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_HEAD
	flags_inv = HIDEEARS|BLOCK_HEAD_HAIR
	bodytype_equip_flags = BODY_FLAG_FELINE


/obj/item/clothing/head/hood/tajaran/cloak/amohda
	name = "Amohdan cloak hood"
	desc = "A hood attached to a Amohdan cloak"
	icon = 'mods/species/tajaran/icons/clothing/hoods/amohda_cloakhood.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_HEAD
	flags_inv = HIDEEARS|BLOCK_HEAD_HAIR

/obj/item/clothing/head/hood/tajaran/cloak/winter
	name = "Adhomian winter cloak hood"
	desc = "A hood attached to a Winter cloak"
	icon = 'mods/species/tajaran/icons/clothing/hoods/winter_cloakhood.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_HEAD
	flags_inv = SLOT_EARS|BLOCK_HEAD_HAIR
	cold_protection = SLOT_HEAD
	min_cold_protection_temperature = T0C - 60

/obj/item/clothing/head/hood/tajaran/cloak/royalist
	name = "Adhomian royalist cloak hood"
	desc = "A hood attached to a Roaylist cloak"
	icon = 'mods/species/tajaran/icons/clothing/hoods/royalist_cloakhood.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_HEAD
	flags_inv = HIDEEARS|BLOCK_HEAD_HAIR

/obj/item/clothing/head/hood/tajaran/cloak/fancy
	name = "Fancy adhomian cloak"
	desc = "A hood attached to a Fancy cloak"
	icon = 'mods/species/tajaran/icons/clothing/hoods/hb_cloakhood.dmi'
	icon_state = ICON_STATE_WORLD
	body_parts_covered = SLOT_HEAD
	flags_inv = HIDEEARS|BLOCK_HEAD_HAIR

//hooded stuff

/obj/item/clothing/suit/storage/toggle/tajaran/surgery
	name = "adhomian surgeon garb"
	desc = "An utilitarian Adhomian surgeon's garb, with its design hardly changed from the First Revolution."
	icon = 'mods/species/tajaran/icons/clothing/coats/tajscrubs.dmi'
	icon_state = ICON_STATE_WORLD
	flags_inv = 0
	hood = /obj/item/clothing/head/hood/tajaran/surgery
	/*allowed = list(/obj/item/stack/medical, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/hypospray, /obj/item/reagent_containers/syringe,
	/obj/item/device/healthanalyzer, /obj/item/device/flashlight, /obj/item/device/radio, /obj/item/tank/emergency_oxygen, /obj/item/device/breath_analyzer, /obj/item/reagent_containers/blood)
	*/
	bodytype_equip_flags = BODY_FLAG_FELINE
/*
/obj/item/clothing/suit/armor/amohda
	name = "amohdan swordsman armor"
	desc = "A suit of armor used by the traditional warriors of Amohda."
	icon = 'icons/obj/tajara_items.dmi'
	icon_state = "amohdan_armor"
	item_state = "amohdan_armor"
	contained_sprite = TRUE
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_ARMS|SLOT_LEGS
	allowed = list(/obj/item/gun,/obj/item/sword)
	flags_inv = HIDEJUMPSUIT|HIDETAIL
	species_restricted = list(BODY_FLAG_FELINE)
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)
	siemens_coefficient = 0.35
	*/

//Important voidsuits