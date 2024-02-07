/decl/bodytype/feline //BASE DEF
	name =                 "ERROR"
	bodytype_category =    BODYTYPE_HUMANOID
	limb_blend =           ICON_ADD
	icon_template =        'mods/species/tajaran/icons/template.dmi'
	icon_base =              'mods/species/tajaran/icons/body_male.dmi'
	icon_deformed =          'mods/species/tajaran/icons/deformed_body_male.dmi'
	bandages_icon =        'icons/mob/bandage.dmi'
	health_hud_intensity = 1.75
	bodytype_flag =        BODY_FLAG_FELINE
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	movement_slowdown = -0.5
	base_hair_color = "#080808"
	base_color = "#080808"
	base_eye_color = "#080808"
	default_h_style = /decl/sprite_accessory/hair/taj

	eye_darksight_range = 7
	eye_flash_mod = 2
	eye_blend = ICON_MULTIPLY
	eye_icon = 'mods/species/tajaran/icons/eyes.dmi'
	eye_low_light_vision_effectiveness = 0.15
	eye_low_light_vision_adjustment_speed = 0.3


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

	cold_level_1 = 200
	cold_level_2 = 140
	cold_level_3 = 80

	heat_level_1 = 330
	heat_level_2 = 380
	heat_level_3 = 800

	heat_discomfort_level = 294
	cold_discomfort_level = 230
	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
	)

/decl/bodytype/feline/female
	name =                 "feminine"
	limb_blend =           ICON_ADD
	icon_base =            'mods/species/tajaran/icons/body_female.dmi'
	icon_deformed =        'mods/species/tajaran/icons/deformed_body_female.dmi'
	associated_gender =      FEMALE
	uniform_state_modifier = "_f"
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

/decl/bodytype/feline/masculine
	name =                   "masculine"
	limb_blend =           ICON_ADD
	icon_base =              'mods/species/tajaran/icons/body_male.dmi'
	icon_deformed =          'mods/species/tajaran/icons/deformed_body_male.dmi'
	associated_gender =      MALE
	uniform_state_modifier = null
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

/obj/item/organ/external/tail/cat
	tail_icon = 'mods/species/tajaran/icons/tail.dmi'
	tail = "tajtail"
	tail_blend = ICON_ADD
