#if !defined(USING_MAP_DATUM)
	#define VHARR_SKY_LEVEL_ID     "vharr_sky"
	#define VHARR_SURFACE_LEVEL_ID "vharr_surface"
	#define VHARR_SURFACE_WESTPLAINS_LEVEL_ID "vharr_surface_westplains"
	#define VHARR_UNDERGROUND_LEVEL_ID "vharr_underground"
	#define VHARR_UNDERDARK_LEVEL_ID "vharr_underdark"
	#define VHARR_SPACEPORT1_LEVEL_ID "vharr_spaceport1"

	#include "../../mods/content/mundane.dm"
	#include "../../mods/content/bigpharma/_bigpharma.dme"
	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/content/government/_government.dme"
	#include "../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../mods/content/modern_earth/_modern_earth.dme"
	#include "../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../mods/content/psionics/_psionics.dme"
	#include "../../mods/content/scaling_descriptors.dm"
	#include "../../mods/content/xenobiology/_xenobiology.dme"

	#include "../../mods/mobs/dionaea/_dionaea.dme"
	#include "../../mods/mobs/borers/_borers.dme"

	#include "../../mods/species/ascent/_ascent.dme"
	#include "../../mods/species/serpentid/_serpentid.dme"
	#include "../../mods/species/utility_frames/_utility_frames.dme"
	#include "../../mods/species/bayliens/_bayliens.dme"
	#include "../../mods/species/tajaran/_tajaran.dme"

	#include "../random_ruins/exoplanet_ruins/playablecolony/playablecolony.dm"

	#include "../../mods/content/government/away_sites/icarus/icarus.dm"
	#include "../../mods/content/corporate/away_sites/lar_maria/lar_maria.dm"

	#include "../away/liberia/liberia.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/casino/casino.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/mining/mining.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/unishi/unishi.dm"
	#include "../away/yacht/yacht.dm"

	#include "jobs/_goals.dm"
	#include "jobs/captain.dm"
	#include "jobs/civilian.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"
	#include "jobs/security.dm"
	#include "jobs/synthetics.dm"

	#include "outfits/_pda.dm"
	#include "outfits/cargo.dm"
	#include "outfits/civilian.dm"
	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"
	#include "outfits/security.dm"

	#include "prometheus_announcements.dm"
	#include "prometheus_antagonism.dm"
	#include "prometheus_cameras.dm"
	#include "prometheus_areas.dm"
	#include "prometheus_elevator.dm"
	#include "prometheus_departments.dm"
	#include "prometheus_jobs.dm"
	#include "prometheus_loadout.dm"
	#include "prometheus_overmap.dm"
	#include "prometheus_setup.dm"
	#include "prometheus_shuttles.dm"
	#include "prometheus_unit_testing.dm"
	#include "snowplanet_atmosphere.dm"
	#include "snowplanet_turfs.dm"
	#include "snowplanet.dm"

	/*
	#include "prometheus-1.dmm"
	#include "prometheus-2.dmm"
	*/
	#include "prometheus-admin.dmm"
	#include "prometheus-transit.dmm"

	#define USING_MAP_DATUM /datum/map/prometheus

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring prometheus
#endif
