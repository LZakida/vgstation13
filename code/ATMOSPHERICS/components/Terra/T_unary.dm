//this is for atmos unary devices because fuck this shit why

/obj/machinery/atmospherics/unary/vent_pump/on/mapping
	icon_state = "map_vent_out"
/obj/machinery/atmospherics/unary/vent_pump/on/mapping/New()
	..()
	icon_state = "base"

/obj/machinery/atmospherics/unary/vent_pump/on/mapping/layered
	piping_layer=DEF_PIPELAYER_SUPPLY
	pixel_x=DEF_PIXELX_SUPPLY
	pixel_y=DEF_PIXELY_SUPPLY

/obj/machinery/atmospherics/unary/vent_scrubber/on/mapping
	icon_state = "map_scrubber"
/obj/machinery/atmospherics/unary/vent_scrubber/on/mapping/New()
	..()
	icon_state = "hoff"

/obj/machinery/atmospherics/unary/vent_scrubber/on/mapping/layered
	piping_layer=DEF_PIPELAYER_SCRUBBERS
	pixel_x=DEF_PIXELX_SCRUBBERS
	pixel_y=DEF_PIXELY_SCRUBBERS