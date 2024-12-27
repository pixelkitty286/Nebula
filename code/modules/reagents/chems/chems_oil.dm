/decl/material/liquid/nutriment/oil
	abstract_type = /decl/material/liquid/nutriment/oil
	burn_product = /decl/material/gas/carbon_monoxide
	ignition_point = T0C+150
	accelerant_value = FUEL_VALUE_ACCELERANT
	gas_flags = XGM_GAS_FUEL
	melting_point = 273
	boiling_point = 373

/decl/material/liquid/nutriment/oil/plant
	name = "plant oil"
	lore_text = "A thin yellow oil pressed from vegetables or nuts. Useful as fuel, or in cooking."
	uid = "chem_nutriment_plant_oil"
	taste_description = "oily blandness"
	allergen_flags = ALLERGEN_VEGETABLE

/decl/material/liquid/nutriment/oil/fish
	name = "fish oil"
	lore_text = "A pungent yellow oil pressed from fish meat and fish skin. Useful as fuel, or in cooking, or for encouraging recovery after brain injuries."
	uid = "chem_nutriment_fish_oil"
	taste_description = "pungent, oily fish"
	allergen_flags = ALLERGEN_FISH

// Copied from neuroannealer; yes, it's silly, but we need a way to treat brain damage on the medieval map.
// Should possibly be an ingredient rather than the be-all end-all medication.
/decl/material/liquid/nutriment/oil/fish/affect_blood(var/mob/living/M, var/removed, var/datum/reagents/holder)
	. = ..()
	M.add_chemical_effect(CE_BRAIN_REGEN, 0.5) // Half as effective as neuroannealer, without the side-effects.
