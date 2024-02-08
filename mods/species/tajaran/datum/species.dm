/datum/appearance_descriptor/age/tajara
	standalone_value_descriptors = list(
		"an infant" =       1,
		"a toddler" =       3,
		"a child" =         7,
		"an adolescent" =  13,
		"a young adult" =  18,
		"an adult" =       30,
		"middle-aged" =    45,
		"aging" =          60,
		"elderly" =       85
	)

/decl/species/tajara
	name = SPECIES_TAJARA
	name_plural = "Tajara"
	base_prosthetics_model = null

	description = "The Tajara are a race of humanoids that possess markedly felinoid traits that include \
	 a semi-prehensile tail, a body covered in fur of varying shades, and padded, digitigrade feet. \
 	 They are a naturally superstitious species with the new generations growing up with tales of \
	 the struggles of surviving an almost total extinction of their species.\
	 Their pride for the struggles they went through is heavily tied to their planet's history. \
	 Recent discovery and aid of their species have caused a leap in progress of finding a new main planet to settle on.\
	 (This race is a work in progress and is subjected to change)"

	hidden_from_codex = FALSE

	age_descriptor = /datum/appearance_descriptor/age/tajara

	available_bodytypes = list(
		/decl/bodytype/feline/female,
		/decl/bodytype/feline/masculine
)

	preview_outfit = /decl/hierarchy/outfit/job/generic/engineer

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED

	blood_types = list(
		/decl/blood_type/feline/mplus,
		/decl/blood_type/feline/mminus,
		/decl/blood_type/feline/rplus,
		/decl/blood_type/feline/rminus,
		/decl/blood_type/feline/mrplus,
		/decl/blood_type/feline/mrminus,
		/decl/blood_type/feline/oplus,
		/decl/blood_type/feline/ominus
	)

	flesh_color = "#afa59e"

	organs_icon = 'mods/species/tajaran/icons/organs.dmi'


	snow_slowdown_mod = -1

	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.2
	gluttonous = GLUT_TINY

//TODO: Add a unarmed claws attack tajara have claws!

	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/kick,
		/decl/natural_attack/punch,
		/decl/natural_attack/bite/sharp
	)

	move_trail = /obj/effect/decal/cleanable/blood/tracks/paw


	available_cultural_info = list(
		TAG_CULTURE = list(
			//Borealis edit removal
			/*
			/decl/cultural_info/culture/tajaran,
			*/
			/decl/cultural_info/culture/tajaran/ethnicity_hharar,
			/decl/cultural_info/culture/tajaran/ethnicity_zhan,
			/decl/cultural_info/culture/tajaran/ethnicity_azuchur,
			/decl/cultural_info/culture/tajaran/ethnicity_msai,
			/decl/cultural_info/culture/tajaran/ethnicity_njarir,
			/decl/cultural_info/culture/tajaran/ethnicity_mixedbreed
		),
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/adhomai,
			/decl/cultural_info/location/other
		),
		//Added to solve a future problem
		TAG_CITIZENSHIP = list(
			/decl/cultural_info/citizenship/taj/spacer
			/*
			/decl/cultural_info/citizenship/taj/pra,
			/decl/cultural_info/citizenship/taj/dpra,
			/decl/cultural_info/citizenship/taj/nka,
			/decl/cultural_info/citizenship/taj/fc,
			/decl/cultural_info/citizenship/taj/cc
			*/
		)
	)

	default_emotes = list(
		/decl/emote/human/swish,
		/decl/emote/human/wag,
		/decl/emote/human/sway,
		/decl/emote/human/qwag,
		/decl/emote/human/fastsway,
		/decl/emote/human/swag,
		/decl/emote/human/stopsway,
		/decl/emote/audible/purr,
		/decl/emote/audible/purrlong,
		/decl/emote/audible/meow,
		/decl/emote/audible/mrrp
	)

	//Autohiss
	autohiss_basic_map = list(
		"r" = list("rr", "rrr", "rrrr")
	)

	autohiss_extra_map = list(
		"p" = list("prr", "prrr", "prrrr")//purrfect!
	)

	autohiss_exempt = list(
		LANGUAGE_SIIKMAAS,
		LANGUAGE_AKHANI
	)

/*
/decl/species/tajaran/handle_additional_hair_loss(var/mob/living/carbon/human/H, var/defer_body_update = TRUE)
	. = H && H.change_skin_color(rgb(189, 171, 143))
*/
