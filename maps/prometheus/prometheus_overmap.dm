/obj/effect/overmap/visitable/ship/prometheus
	name = "NBS Prometheus"
	color = "#00ffff"
	start_x = 4
	start_y = 4
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_BASE|OVERMAP_SECTOR_IN_SPACE
	vessel_mass = 50000
	max_speed = 1/(20 SECONDS)
	burn_delay = 20 SECONDS
	initial_generic_waypoints = list(
		"nav_prometheus_port_upper",
		"nav_prometheus_fore_upper",
		"nav_prometheus_aft_upper",
		"nav_prometheus_starboard_lower",
		"nav_prometheus_port_lower",
		"nav_prometheus_fore_lower",
		"nav_prometheus_aft_lower",
		"nav_prometheus_engineering_pod_dock",
		"nav_prometheus_mining_pod_dock",
		"nav_prometheus_research_pod_dock"
	)

/obj/effect/overmap/visitable/ship/landable/pod
	name = "Generic Pod"
	desc = "A single-seater short-range pod."
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 4000
	fore_dir = NORTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

// Overmap transit landmarks
/obj/effect/shuttle_landmark/prometheus_main_starboard
	name = "prometheus starboard approach"
	landmark_tag = "nav_prometheus_starboard_upper"

/obj/effect/shuttle_landmark/prometheus_main_port
	name = "prometheus port approach"
	landmark_tag = "nav_prometheus_port_upper"

/obj/effect/shuttle_landmark/prometheus_main_fore
	name = "prometheus fore approach"
	landmark_tag = "nav_prometheus_fore_upper"

/obj/effect/shuttle_landmark/prometheus_main_aft
	name = "prometheus aft approach"
	landmark_tag = "nav_prometheus_aft_upper"

/obj/effect/shuttle_landmark/prometheus_sub_starboard
	name = "prometheus starboard underside"
	landmark_tag = "nav_prometheus_starboard_lower"

/obj/effect/shuttle_landmark/prometheus_sub_port
	name = "prometheus port underside"
	landmark_tag = "nav_prometheus_port_lower"

/obj/effect/shuttle_landmark/prometheus_sub_fore
	name = "prometheus fore underside"
	landmark_tag = "nav_prometheus_fore_lower"

/obj/effect/shuttle_landmark/prometheus_sub_aft
	name = "prometheus aft underside"
	landmark_tag = "nav_prometheus_aft_lower"
