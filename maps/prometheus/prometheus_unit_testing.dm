/datum/map/prometheus
	// Unit test exemptions
	apc_test_exempt_areas = list(
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/prometheus/construction = NO_SCRUBBER|NO_VENT,
		/area/prometheus/engineering/atmos/storage = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/arrivals = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/atmos_control = 0,
		/area/prometheus/maintenance/auxsolarport = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/auxsolarstarboard = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/dormitory = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/engi_shuttle = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/evahallway = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/exterior = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/prometheus/maintenance/medbay = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/incinerator = NO_SCRUBBER,
		/area/prometheus/maintenance/foresolar = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/portsolar = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/research_port = 0,
		/area/prometheus/maintenance/research_starboard = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/starboardsolar = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/sub/aft = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/sub/fore = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/sub/port = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/sub/starboard = NO_SCRUBBER|NO_VENT,
		/area/prometheus/maintenance/sub/relay_station = 0,
		/area/prometheus/maintenance/sub/command = 0,
		/area/prometheus/maintenance/substation/command = 0,
		/area/prometheus/maintenance/telecomms = 0,
		/area/prometheus/medical/genetics = NO_APC,
		/area/prometheus/medical/genetics/cloning = NO_APC,
		/area/prometheus/research/test_area = NO_SCRUBBER|NO_VENT,
		/area/prometheus/research/server = 0,
		/area/shuttle = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/turbolift = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/prometheus/solar = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/prometheus/storage/emergency = NO_SCRUBBER|NO_VENT,
		/area/prometheus/storage/emergency2 = NO_SCRUBBER|NO_VENT,
		/area/ship/prometheus_pod_engineering = NO_SCRUBBER|NO_VENT,
		/area/ship/prometheus_pod_mining = NO_SCRUBBER|NO_VENT,
		/area/ship/prometheus_pod_research = NO_SCRUBBER|NO_VENT
	)

	area_coherency_test_exempt_areas = list(
		/area/space,
		/area/prometheus/maintenance/exterior)

	area_coherency_test_subarea_count = list(
		/area/prometheus/engineering/atmos = 4,
		/area/prometheus/maintenance/incinerator = 2)
