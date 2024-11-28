/decl/psionic_faculty
	var/id
	var/name
	var/decl/intent/associated_intent
	var/list/armour_types = list()
	var/list/powers = list()

/decl/psionic_faculty/validate()
	. = ..()
	if(associated_intent && !istype(associated_intent))
		. += "non-/decl/intent associated_intent value set"

/decl/psionic_faculty/Initialize()
	if(ispath(associated_intent))
		associated_intent = GET_DECL(associated_intent)
	. = ..()
	for(var/atype in armour_types)
		SSpsi.armour_faculty_by_type[atype] = id
