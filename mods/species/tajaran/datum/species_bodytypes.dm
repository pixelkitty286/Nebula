/decl/bodytype/feline/female
	name =                 "feminine"
	bodytype_category =    BODYTYPE_HUMANOID
	limb_blend =           ICON_ADD
	icon_template =        'mods/species/tajaran/icons/template.dmi'
	icon_base =            'mods/species/tajaran/icons/body_female.dmi'
	icon_deformed =        'mods/species/tajaran/icons/deformed_body_female.dmi'
	bandages_icon =        'icons/mob/bandage.dmi'
	health_hud_intensity = 1.75
	bodytype_flag =        BODY_FLAG_FELINE
	associated_gender =      FEMALE
	uniform_state_modifier = "_f"
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	movement_slowdown = -0.5
	base_hair_color = "#080808"
	base_color = "#080808"
	base_eye_color = "#080808"
	default_h_style = /decl/sprite_accessory/hair/taj


	has_organ = list(
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_APPENDIX = /obj/item/organ/internal/appendix,
		BP_EYES =     /obj/item/organ/internal/eyes/taj
	)


	override_limb_types = list(
		BP_EYES = /obj/item/organ/internal/eyes/taj,
		BP_TAIL = /obj/item/organ/external/tail/cat
	)

/decl/bodytype/feline/masculine
	name =                   "masculine"
	bodytype_category =    BODYTYPE_HUMANOID
	limb_blend =           ICON_ADD
	icon_base =              'mods/species/tajaran/icons/body_male.dmi'
	icon_deformed =          'mods/species/tajaran/icons/deformed_body_male.dmi'
	bandages_icon =        'icons/mob/bandage.dmi'
	bodytype_flag =        BODY_FLAG_FELINE
	associated_gender =      MALE
	uniform_state_modifier = null
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	movement_slowdown = -0.5
	base_hair_color = "#080808"
	base_color = "#080808"
	base_eye_color = "#080808"
	default_h_style = /decl/sprite_accessory/hair/taj

	has_organ = list(
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
	)
	override_organ_types = list(
		BP_EYES =     /obj/item/organ/internal/eyes/taj,
		BP_BRAIN =    /obj/item/organ/internal/brain/taj
	)

	override_limb_types = list(
		BP_TAIL = /obj/item/organ/external/tail/cat
	)

/obj/item/organ/external/tail/cat
	tail_animation = 'mods/species/tajaran/icons/tail.dmi'
	tail = "tajtail"
	tail_blend = ICON_ADD
