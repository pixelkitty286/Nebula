////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Vharr Atmosphere
////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/gas_mixture/vharr
	gas = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD,
	)
/datum/gas_mixture/vharr/New(_volume = CELL_VOLUME, _temperature = 0, _group_multiplier = 1)
	..(CELL_VOLUME, T0C - 62.44)
	update_values()

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Vharr Flora
////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/planet_flora/random/vharr
	flora_diversity = 2
	has_trees       = TRUE
	grass_color     = COLOR_GRAY80
	plant_colors    = list(
		COLOR_SURGERY_BLUE,
		COLOR_SILVER,
		COLOR_GRAY80,
		COLOR_OFF_WHITE
	)

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Vharr Fauna
////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/fauna_generator/vharr
	max_fauna_alive     = 10
	max_megafauna_alive = 0
	fauna_types         = list(
		/mob/living/simple_animal/yithian,
	)

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Vharr Overmap Marker
////////////////////////////////////////////////////////////////////////////////////////////////////////////

/obj/effect/overmap/visitable/sector/planetoid/vharr
	name         = "vharr"
	color        = COLOR_GRAY
	planetoid_id = "vharr"
	start_x      = 10
	start_y      = 10

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Vharr Planetoid Data
////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/planetoid_data/vharr
	id                  = "vharr"
	name                = "\improper vharr"
	topmost_level_id    = VHARR_SKY_LEVEL_ID
	surface_level_id    = VHARR_SURFACE_LEVEL_ID
	habitability_class  = HABITABILITY_OKAY
	atmosphere          = new /datum/gas_mixture/vharr
	surface_color       = COLOR_GRAY
	water_color         = COLOR_BLUE_GRAY
	rock_color          = COLOR_GRAY40
	has_rings           = TRUE
	ring_color          = COLOR_OFF_WHITE
	ring_type_name      = SKYBOX_PLANET_RING_TYPE_SPARSE
	strata              = /decl/strata/sedimentary
	engraving_generator = /datum/xenoarch_engraving_flavor
	day_duration        = 12 MINUTES
	surface_light_level = 0.5
	surface_light_color = COLOR_OFF_WHITE
	flora               = /datum/planet_flora/random/vharr
	fauna               = /datum/fauna_generator/vharr

////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Vharr Template
////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/map_template/planetoid/vharr
	name                  = "vharr"
	template_categories   = list(MAP_TEMPLATE_CATEGORY_PLANET)
	template_flags        = TEMPLATE_FLAG_SPAWN_GUARANTEED
	planetoid_data_type   = /datum/planetoid_data/vharr
	mappaths              = list(
		"maps/prometheus/prometheus-1.dmm",
		"maps/prometheus/prometheus-2.dmm",
		"maps/prometheus/prometheus-sky-3.dmm",
		//"maps/prometheus/prometheus-underdark-4.dmm",
		//"maps/prometheus/prometheus_west-1.dmm",
		//"maps/prometheus/prometheus_spaceport-1.dmm",
	)

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Vharr Level Data
////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/level_data/planetoid/vharr
	name             = "vharr'jurl unknown"
	base_area        = /area/exoplanet/vharr/surface
	base_turf        = /turf/simulated/floor/snow/vharr
	border_filler    = /turf/unsimulated/dark_filler
	ambient_light_color = COLOR_GREEN_GRAY
	exterior_atmos_temp = VHARR_TEMP
	exterior_atmosphere = VHARR_ATMOS


/datum/level_data/planetoid/vharr/surface
	name             = "vharr'jurl surface"
	level_id         = "vharr_surface"
	base_area        = /area/exoplanet/vharr/surface
	base_turf        = /turf/simulated/floor/snow/vharr
	border_filler    = /turf/unsimulated/dark_filler
	ambient_light_level = 0.7
	ambient_light_color = COLOR_GREEN_GRAY
	level_generators = list(
		/datum/random_map/noise/exoplanet/snow,
		/datum/random_map/noise/ore/poor,
	)
	connected_levels    = list(
		VHARR_SKY_LEVEL_ID            = UP,
		VHARR_UNDERGROUND_LEVEL_ID    = DOWN,
		//VHARR_SURFACE_WESTPLAINS_LEVEL_ID = WEST, - soon :3
	)


/datum/level_data/planetoid/vharr/sky
	name             = "vharr'jurl sky"
	level_id         = "vharr_sky"
	ambient_light_level = 1.0
	base_area        = /area/exoplanet/vharr/sky
	base_turf        = /turf/exterior/open/sky
	border_filler    = /turf/unsimulated/dark_filler
	connected_levels    = list(
		VHARR_SURFACE_LEVEL_ID    = DOWN,
	)


/datum/level_data/planetoid/vharr/underground
	name             = "vharr'jurl underground"
	level_id         = "vharr_underground"
	base_area        = /area/exoplanet/vharr/underground
	border_filler    = /turf/unsimulated/mineral
	base_turf        = /turf/simulated/floor/ice/vharr
	level_generators = list(
		/datum/random_map/noise/exoplanet/snow,
		/datum/random_map/noise/ore/rich,
	)
	connected_levels    = list(
		VHARR_SURFACE_LEVEL_ID    = UP,
		//VHARR_UNDERDARK_LEVEL_ID = DOWN,
	)
/*
/datum/level_data/planetoid/vharr/underdark
	name      = "vharr'jurl underdark depths"
	level_id  = "vharr_underdark"
	base_area = /area/exoplanet/vharr/underdark
	base_turf = /turf/exterior/rock/volcanic
	level_generators = list(
		/datum/random_map/noise/exoplanet/snow,
		/datum/random_map/noise/ore/rich,
	)
*/
/*
/datum/level_data/planetoid/vharr/spaceport1
	name      = "vharr'jurl spaceport deck 1
	level_id  = "vharr_spaceport1"
	base_area = /area/exoplanet/vharr
*/
/obj/abstract/level_data_spawner/vharr/sky
	level_data_type = /datum/level_data/planetoid/vharr/sky

/obj/abstract/level_data_spawner/vharr
	level_data_type = /datum/level_data/planetoid/vharr

/obj/abstract/level_data_spawner/vharr/underground
	level_data_type = /datum/level_data/planetoid/vharr/underground

/obj/abstract/level_data_spawner/vharr/surface
	level_data_type = /datum/level_data/planetoid/vharr/surface

/*
/obj/abstract/level_data_spawner/vharr/underdark
	level_data_type = /datum/level_data/planetoid/vharr/underdark
*/
/*
/obj/abstract/level_data_spawner/vharr/spaceport1
	level_data_type = /datum/level_data/planetoid/vharr/spaceport1
*/

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Vharr Map Data
////////////////////////////////////////////////////////////////////////////////////////////////////////////
/obj/abstract/map_data/vharr
	height = 4