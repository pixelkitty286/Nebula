#define SPECIES_TAJARA "Tajara"
#define CULTURE_TAJARA "Tajara"
#define CULTURE_TAJARA_HHARAR "Hharar"
#define CULTURE_TAJARA_ZHAN "Zhan"
#define CULTURE_TAJARA_AZUCHUR "Azuchur"
#define CULTURE_TAJARA_MSAI "M'sai"
#define CULTURE_TAJARA_NJARIR "Njarir"
#define CULTURE_TAJARA_MIXEDBREED "Mixed"
#define LANGUAGE_SIIKMAAS "Siik'Maas"
#define LANGUAGE_AKHANI "Akhani"
#define LANGUAGE_SIIKTAJR "Siik'Tajr"
#define BODY_FLAG_FELINE BITFLAG(7)

/obj/item/clothing/Initialize()
	. = ..()
	if(bodytype_equip_flags & BODY_FLAG_EXCLUDE)
		bodytype_equip_flags |= BODY_FLAG_FELINE

/mob/living/carbon/human/tajaran/Initialize(mapload)
	. = ..(mapload, SPECIES_TAJARA)

/decl/modpack/tajara
	name = "Borealis Tajara Content"

//Huge thanks to Aurora.3 & CitRP for the content used