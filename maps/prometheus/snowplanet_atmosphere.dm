#define VHARR_PRESSURE (ONE_ATMOSPHERE/2)
#define VHARR_TEMP (T0C - 62.44)
#define VHARR_ATMOS_MOLES (VHARR_PRESSURE * CELL_VOLUME/(VHARR_TEMP * R_IDEAL_GAS_EQUATION))
#define VHARR_ATMOS list(\
	/decl/material/gas/oxygen         = 0.10 * VHARR_ATMOS_MOLES,\
	/decl/material/gas/nitrogen       = 0.53 * VHARR_ATMOS_MOLES,\
	/decl/material/gas/carbon_dioxide = 0.11 * VHARR_ATMOS_MOLES,\
)