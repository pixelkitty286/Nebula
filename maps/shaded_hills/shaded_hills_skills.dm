/decl/hierarchy/skill/crafting
	name = "Crafting"
	difficulty = SKILL_EASY
	default_max = SKILL_MAX
	abstract_type = /decl/hierarchy/skill/crafting

/decl/hierarchy/skill/crafting/carpentry
	name = "Carpentry"
	uid =  "skill_crafting_carpentry"
	desc = "Your ability to construct and repair objects and structures made out of wood, and use woodworking tools."
	levels = list(
		"Unskilled"   = "You can use an axe to split wood and cut it into planks, but your splits and cuts are often wasteful and uneven. You can nail pieces of wood together.",
		"Basic"       = "You've whittled a few things out of wood before, and maybe even done a small construction project or two. You're more effective at using tools like hatchets, knives, and hammers for woodworking.",
		"Trained"     = "You've received some degree of formal instruction or apprenticeship in woodworking, or have a lot of hands-on practice with woodcraft. Your cuts are cleaner, your whittling is quicker, and your joinery is sturdier.",
		"Experienced" = "You have a plethora of professional carpentry experience, either as a trade or from running a farmstead or business. You could likely train an apprentice of your own in carpentry.",
		"Master"      = "Few can match your experience with woodcraft. You fit tight joinery, carve intricate items, and prepare raw material with precision and speed. Trees dream of being worked by your hands."
	)

/decl/hierarchy/skill/crafting/stonemasonry
	name = "Stonemasonry"
	uid =  "skill_crafting_mason"
	desc = "This skill describes your skill with stonecarving."
	levels = list(
		"Unskilled"   = "Placeholder.",
		"Basic"       = "Placeholder.",
		"Trained"     = "Placeholder.",
		"Experienced" = "Placeholder.",
		"Master"      = "Placeholder."
	)

/decl/hierarchy/skill/crafting/metalwork
	name = "Metalwork"
	uid =  "skill_crafting_metalwork"
	desc = "This skill describes your skill with shaping, forging and casting metal."
	levels = list(
		"Unskilled"   = "Placeholder.",
		"Basic"       = "Placeholder.",
		"Trained"     = "Placeholder.",
		"Experienced" = "Placeholder.",
		"Master"      = "Placeholder."
	)

/decl/hierarchy/skill/crafting/artifice
	name = "Artifice"
	uid =  "skill_crafting_artifice"
	desc = "This skill describes your skill with complex devices and mechanisms."
	levels = list(
		"Unskilled"   = "Placeholder.",
		"Basic"       = "Placeholder.",
		"Trained"     = "Placeholder.",
		"Experienced" = "Placeholder.",
		"Master"      = "Placeholder."
	)

/decl/hierarchy/skill/crafting/textiles
	name = "Textiles"
	uid =  "skill_crafting_textiles"
	desc = "Your ability to create and mend objects made of cloth, thread, leather, and other fabrics."
	levels = list(
		"Unskilled"   = "You can use a sewing needle, but it takes substantial care to not prick yourself with it. With plenty of time, you can weave grass into a basic basket or a mat. Your patch repair jobs are rough and ramshackle and anything you make from scratch is often fragile and misshapen.",
		"Basic"       = "You've got some experience with a loom or spinning wheel, and you can sew without poking yourself. More advanced stitching, knitting, or weaving techniques are still beyond you, but your handiwork is rapidly improving.",
		"Trained"     = "You have plenty of experience with weaving, sewing, or spinning, and may even be an apprentice in the trade. You've started to grasp some more advanced techniques and greatly improved your proficiency at the basics.",
		"Experienced" = "You've reached a near-mastery of basic sewing, weaving, and leatherworking skills, but still have room to improve. You know enough to train someone in the basics of working with textiles, but mastery is not yet within your reach.",
		"Master"      = "You've never seen a piece of clothing you couldn't mend. You've mastered not just the basics but more advanced techniques as well, making your skill with texiles nearly unmatched. Your knowledge would be suitable to train an apprentice enough to work independently."
	)

/decl/hierarchy/skill/crafting/sculpting
	name = "Sculpting"
	uid =  "skill_crafting_sculpting"
	desc = "Your ability to craft objects out of soft materials like wax or clay."
	levels = list(
		"Unskilled"   = "You can mould soft materials into rough shapes, but your work is sloppy and anything more complicated than a pinch-pot is beyond your ken.",
		"Basic"       = "Your understanding of sculpting has improved to allow you to create more even and symmetrical designs. You likely have experience using a pottery wheel, turntable, or similar device.",
		"Trained"     = "Your creations have become at once more uniform and more aesthetically pleasing, with a consistent level of quality to them.",
		"Experienced" = "You have extensive experience with sculpting, able to work with a wide array of materials to form just about anything you set your mind to, as long as you put in the effort.",
		"Master"      = "You have reached the pinnacle of your craft, able to sculpt clay, wax, and similar materials to your every whim, so much so that a mound of clay may as well be an extension of your will itself."
	)

// SCULPTING OVERRIDES
/decl/material/solid/clay
	crafting_skill = /decl/hierarchy/skill/crafting/sculpting

/decl/material/solid/soil
	crafting_skill = /decl/hierarchy/skill/crafting/sculpting

/decl/material/solid/organic/wax
	crafting_skill = /decl/hierarchy/skill/crafting/sculpting

// TEXTILES OVERRIDES
/obj/structure/textiles
	work_skill = /decl/hierarchy/skill/crafting/textiles

/decl/material/solid/organic/cloth
	crafting_skill = /decl/hierarchy/skill/crafting/textiles

/decl/material/solid/organic/skin
	crafting_skill = /decl/hierarchy/skill/crafting/textiles

/decl/material/solid/organic/leather
	crafting_skill = /decl/hierarchy/skill/crafting/textiles

/decl/material/solid/organic/plantmatter
	crafting_skill = /decl/hierarchy/skill/crafting/textiles

// STONEMASONRY OVERRIDES
/decl/material/solid/stone
	crafting_skill = /decl/hierarchy/skill/crafting/stonemasonry

// METALWORK OVERRIDES
/decl/material/solid/metal
	crafting_skill = /decl/hierarchy/skill/crafting/metalwork

// CARPENTRY OVERRIDES
/decl/material/solid/organic/wood
	crafting_skill = /decl/hierarchy/skill/crafting/carpentry

/decl/material/solid/organic/plantmatter/pith // not quite wood but it's basically still wood carving
	crafting_skill = /decl/hierarchy/skill/crafting/carpentry

// MISC OVERRIDES
/decl/stack_recipe
	recipe_skill = null // set based on material

// Removal of space skills
/datum/map/shaded_hills/get_available_skill_types()
	. = ..()
	. -= list(
		SKILL_EVA,
		SKILL_MECH,
		SKILL_PILOT,
		SKILL_COMPUTER,
		SKILL_FORENSICS,
		SKILL_ELECTRICAL,
		SKILL_ATMOS,
		SKILL_ENGINES,
		SKILL_DEVICES
	)