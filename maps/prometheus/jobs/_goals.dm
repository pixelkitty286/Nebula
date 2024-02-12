/decl/department/command
	goals = list(/datum/goal/department/paperwork/prometheus)

var/global/list/prometheus_paperwork_spawn_turfs = list()
var/global/list/prometheus_paperwork_end_areas = list()

/obj/abstract/landmark/paperwork_spawn_prometheus
	name = "Prometheus Paperwork Goal Spawn Point"

/obj/abstract/landmark/paperwork_spawn_prometheus/Initialize()
	..()
	var/turf/T = get_turf(src)
	if(istype(T))
		global.prometheus_paperwork_spawn_turfs |= T
	return INITIALIZE_HINT_QDEL

/obj/abstract/landmark/paperwork_finish_prometheus
	name = "Prometheus Paperwork Goal Finish Point"

/obj/abstract/landmark/paperwork_finish_prometheus/Initialize()
	..()
	var/turf/T = get_turf(src)
	if(istype(T))
		var/area/A = get_area(T)
		if(istype(A))
			global.prometheus_paperwork_end_areas |= A
	return INITIALIZE_HINT_QDEL

/datum/goal/department/paperwork/prometheus
	paperwork_types = list(/obj/item/paperwork/prometheus)
	signatory_job_list = list(
		/datum/job/captain,
		/datum/job/hop,
		/datum/job/cmo,
		/datum/job/chief_engineer,
		/datum/job/rd,
		/datum/job/hos
	)

/datum/goal/department/paperwork/prometheus/get_paper_spawn_turfs()
	return global.prometheus_paperwork_spawn_turfs

/datum/goal/department/paperwork/prometheus/get_paper_end_areas()
	return global.prometheus_paperwork_end_areas

/obj/item/paperwork/prometheus
	name = "\improper Prometheus payroll paperwork"
	desc = "A complex list of salaries, hours and tax withheld for NBS Prometheus workers this month."
