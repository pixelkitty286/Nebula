/obj/abstract/turbolift_spawner/prometheus
	depth = 2
	lift_size_x = 3
	lift_size_y = 3

/obj/abstract/turbolift_spawner/prometheus/sec
	name = "prometheus turbolift map placeholder - Securiy"
	dir = EAST

	areas_to_use = list(
		/area/turbolift/security_maintenance,
		/area/turbolift/security_station
		)

/obj/abstract/turbolift_spawner/prometheus/research
	name = "prometheus turbolift map placeholder - Research"
	dir = WEST

	areas_to_use = list(
		/area/turbolift/research_maintenance,
		/area/turbolift/research_station
		)

/obj/abstract/turbolift_spawner/prometheus/engineering
	name = "prometheus turbolift map placeholder - Engineering"
	icon = 'icons/obj/turbolift_preview_3x3.dmi'
	dir = EAST
	lift_size_x = 4
	lift_size_y = 4

	areas_to_use = list(
		/area/turbolift/engineering_maintenance,
		/area/turbolift/engineering_station
		)

/obj/abstract/turbolift_spawner/prometheus/cargo
	name = "prometheus turbolift map placeholder - Cargo"

	areas_to_use = list(
		/area/turbolift/cargo_maintenance,
		/area/turbolift/cargo_station
		)

/obj/abstract/turbolift_spawner/prometheus/express
	name = "prometheus turbolift map placeholder - express"
	depth = 3

	areas_to_use = list(
		/*
		/area/turbolift/express_station2,
		/area/turbolift/express_station1,
		*/
		/area/turbolift/express_transit,
		/area/turbolift/express_surface,
		/area/turbolift/express_maintenance,
		)

/obj/abstract/turbolift_spawner/prometheus/express2
	name = "prometheus turbolift map placeholder - express2"
	depth = 3

	areas_to_use = list(
		/*
		/area/turbolift/express2_station2,
		/area/turbolift/express2_station1,
		*/
		/area/turbolift/express2_transit,
		/area/turbolift/express2_surface,
		/area/turbolift/express2_maintenance,
		)
