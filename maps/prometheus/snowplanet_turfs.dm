//Planet specific turfs

/turf/simulated/floor/snow/vharr
	initial_gas = VHARR_ATMOS
	temperature = VHARR_TEMP

/turf/simulated/floor/ice/vharr
	initial_gas = VHARR_ATMOS
	temperature = VHARR_TEMP


/decl/turf_initializer/vharr_surface
	var/list/surface_props_probs = list(
		/obj/structure/boulder = 30,
	)
	var/list/allowed_turfs = list(
		/turf/simulated/floor/snow/vharr,
	)

