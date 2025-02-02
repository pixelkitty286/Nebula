/mob/living/carbon/alien
	name = "alien"
	desc = "What IS that?"
	pass_flags = PASS_FLAG_TABLE
	mob_default_max_health = 100
	mob_size = MOB_SIZE_TINY
	mob_sort_value = 8
	var/dead_icon
	var/language
	var/death_msg = "lets out a waning guttural screech, green blood bubbling from its maw."
	var/instance_num

/mob/living/carbon/alien/Initialize()
	verbs += /mob/living/proc/ventcrawl
	verbs += /mob/living/proc/hide

	instance_num = rand(1, 1000)
	name = "[initial(name)] ([instance_num])"
	real_name = name
	update_icon()

	if(language)
		add_language(language)

	gender = NEUTER
	. = ..()

/mob/living/carbon/alien/get_blood_color()
	return COLOR_LIME

/mob/living/carbon/alien/restrained()
	return 0

/mob/living/carbon/alien/get_admin_job_string()
	return "Alien"
