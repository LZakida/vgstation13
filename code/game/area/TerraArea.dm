//File contains areas needed for whatever hogshit this server uses that other servers don't / we implemented that others defk




//PERIPHERAL STATION AREAS -- For use with that little area disconnected from the station that has the solar array to itself sorta
//Being maintenance, should block rad storms and shit
//Introduced in rock2, currently only used there. This area needs to be powered for the endgame award to register.

/area/maintenance/peris
	name = "outpost"
	icon_state = "blueold"

/area/maintenance/peris/lock
	name = "Airlock"
	icon_state = "red"

/area/maintenance/peris/hydro
	name = "grow shit"
	icon_state = "hydro"

/area/maintenance/peris/bed
	name = "bedroom"
	icon_state = "dark160"

/area/maintenance/peris/fuck
	name = "fuckoff"
	icon_state = "dark128"


//EXTERIOR AREAS -- For use with places that are exterior,
//hm yes
//the floor here is made out of floor

/area/exterior/rockstat
	name = "Rockstation Exterior Cave"
	icon_state = "yellow"

//Rockstation uninhabited cavern-type area things of doom go here
//They extend the area directly above here - add more if needed I guess
//DEPRECATED!! These no longer are in use on rock2 and are hereby marked for deletial
/*
/area/exterior/rockstat/pocket
	name = "uninhabited cave"
/area/exterior/rockstat/pocket/_1
/area/exterior/rockstat/pocket/_2
/area/exterior/rockstat/pocket/_3
/area/exterior/rockstat/pocket/_4
/area/exterior/rockstat/pocket/_5
/area/exterior/rockstat/pocket/_6
/area/exterior/rockstat/pocket/_7
/area/exterior/rockstat/pocket/_8
/area/exterior/rockstat/pocket/_9
*/

//Space area wot once was in para and VG evidently intended to use
/area/space
	icon = 'icons/turf/areas2.dmi'
	icon_state = "space"
//idk why I do this
/area/space/surface
	name = "surface"
	icon_state = "space2"

/area/exterior/rockstat/cargo //that area outside cargo, yes
	name = "Cargo Exterior"
	icon_state = "dark128"
/*
/area/exterior/rockstat/salvage //that area outside the salvage dock, yes
	name = "Salvage Dock Exterior"
	icon_state = "green" */ //DEPRECATED!! y i do dis

//TERRALABS AREAS -- Oh fuck

/area/terralabs
	icon_state = "away"
	music = "music/mines03.ogg"
	//Nothing; this is intended for inheritance use only and not for the actual maps

/area/terralabs/hallway
	name = "terralabs hall"

/area/terralabs/hive
	name = "Hivebot Reasearch Wing"
	icon_state = "away1"

/area/terralabs/blarg
	name = "Containment Cells"
	icon_state = "away1"

/area/terralabs/storage
	name = "Storage Hub"

/area/terralabs/storage1
	name = "Storage room #1"
	icon_state = "away2"

/area/terralabs/storage2
	name = "Storage room #2"
	icon_state = "away3"

/area/terralabs/storage3
	name = "Spare materials storage"
	icon_state = "away4"

/area/terralabs/worl
	name = "Engine Room"
	icon_state = "yellow"


//GEOSTATION AREAS -- Former mining derelict on our ancient code, brought back for rock2
//(which also re-implemented old mining station from said codebase)

/area/geostat
	name = "Geostation"
	icon_state = "dark"

/area/geostat/hydro
	name = "Geostation Hydroponics Wing"
	icon_state = "radiation"

/area/geostat/disposal
	name = "The ShitHub"
	icon_state = "law"

/area/geostat/maint
	name = "maintenance"
	icon_state = "maintcentral"

/area/mine/explored/geostatexterior //this formerly was /area/mine/dangerous/explored/geostatexterior. However, VG code does not make the 'dangerous' distinction as Paradise did. This change is to prevent unexpected buttsex.
	name = "Geostation Exterior"
	icon_state = "cave"

// SUBSTATIONS (I stole these from our old bay stuff if we ever want to use them in something... which I will, in rock)
// (Subtype of maint, that should let them serve as shielded area during radstorm)

/area/maintenance/substation
	name = "Substation"
	icon = 'icons/turf/areas2.dmi' //Using separate area icon file to avoid merge bullshit
	icon_state = "substation"

/area/maintenance/substation/engineering //selfexplanatory
	name = "Engineering Substation"

/area/maintenance/substation/medical_science // Unused in bay, but depending on your map demands.... This is both med and sci
	name = "Medical Research Substation"

/area/maintenance/substation/medical //med
	name = "Medical Substation"

/area/maintenance/substation/research //sci
	name = "Research Substation"

/area/maintenance/substation/civilian_east // Bar, kitchen, dorms, whatever you can hook to it really
	name = "Civilian East Substation"

/area/maintenance/substation/civilian_west // anything on the other side that's civ area stuff
	name = "Civilian West Substation"

/area/maintenance/substation/cargo //Not initially on this list when I stole it; but I'm gonna have a dedicated substation for cargo. As always.
	name = "Cargo Substation"

/area/maintenance/substation/command // Bridge and HoS or whatever else is up there
	name = "Command Substation"

/area/maintenance/substation/security // sec
	name = "Security Substation"


// FURTHER ENGINEERING AREAS THAT MAY OR MAY NOT BE USEFUL TO ANYONE

/area/engineering/d_fab
	name = "Drone Fabrication"
	icon_state = "engine"

/area/engineering/e_waste
	name = "Engine Waste Handling"
	icon = 'icons/turf/areas2.dmi' //Using separate area icon file to avoid merge bullshit, as above
	icon_state = "e_waste"

/area/engineering/hall
	name = "Engineering Hall"
	icon = 'icons/turf/areas2.dmi' //Using separate area icon file to avoid merge bullshit, as above
	icon_state = "hall"

/area/engineering/exterior
	name = "Engine Exterior"
	icon_state = "engine"

/area/engineering/monitor
	name = "Engine Monitor Room"
	icon_state = "engine_control"


// SALVAGE - Salvage captain and all associated areas

/area/salvage //intended for station dock
	name = "Salvage Captain"
	icon_state = "south"
	holomap_color = HOLOMAP_AREACOLOR_CARGO


/area/salvage/lobby //intended for waiting area
	name = "Salvage Expedition Lobby"
	icon_state = "southeast" //GET IT GET IT 'SE' 'SALVAGE EXPEDITION'


/area/salvage/q //intended for captain's quarters
	name = "Salvage Captain Quarters"
	icon_state = "red"

/area/salvage/main //intended for the whateverdiks big area
	name = "Salvage Main Concourse"
	icon_state = "southeast" //CUZ IT'S THE SOUTHEAST CORNER TOO

/area/salvage/support //intended for the ministation's supportability
	name = "Support Room"
	icon_state = "auxstorage"

/area/shuttle/salvageshuttle
	name = "Salvage Shuttle"
	icon_state = "shuttle"
	//do I need a requires_power here?

		//below until derelicts are all salvage yard stuffs
/area/salvage/post/southwest
	name = "Southwest Outpost"
	icon_state = "southwest"

/area/salvage/post/east
	name = "East Outpost"
	icon_state = "east"

/area/salvage/post/northeast
	name = "Northeast Outpost"
	icon_state = "northeast"

/area/salvage/yard
	name = "generic"
	icon = 'icons/turf/areas2.dmi'
	icon_state = "..."

/area/salvage/yard/honk
	name = "honk"
	icon_state = "honk"

/area/salvage/yard/silent
	name = "..."

/area/salvage/yard/hidanger
	name = "Hazard zone"
	icon_state = "danger"
	ambient_sounds = list('sound/music/deathclub.ogg')

/area/salvage/yard/hidanger/synd
	name = "Syndicate base"
	icon_state = "turds"

/area/salvage/yard/genarea
	name = "template spawn area"
	icon_state = "junk"
	holomap_color = null
/area/salvage/ashut/m
	name = "Abandoned Shuttle"
	icon_state = "shuttlered2"

/area/salvage/yard/shelter
	name = "Abandoned Emergency Shelter"
	requires_power = 0


// RANDOM-GEN AREAS THAT ARE NOT SALVAGE-RELATED

/area/space/random
	icon_state = "wat"
/area/space/random/stationsats/telecom
//	icon_state = does anyone actually give an eighth of a fuck if these differ or not?
/area/space/random/stationsats/AI
//	icon_state = does anyone actually give an eighth of a fuck if these differ or not?

//Derelicts
/area/derelict/jettison
	name = "Jettisonned Station Engine"
	icon_state = "engine"


//OTHER SHUTTLE AREAS
/area/shuttle/engieshuttle
	name = "Engineering Shuttle"
	icon_state = "shuttle"
/*
/area/shuttle/FTL goes here

/area/shuttle/asdf
*/


//ABSOLUTELY POINTLESS!

/area/maintenance/pointless
	name = "Absolutely Pointless"
	icon = 'icons/turf/areas2.dmi' //Because FAK
	icon_state = "honk"
	ambient_sounds = list('sound/music/atmosdel.ogg')

/area/maintenance/pointless/dafuq //OR IS IT?!?!?!?!?
	name = "Da fuq"


//CARGO SHAFT YES

/area/maintenance/cargobot
	name = "Delivery Bot Tunnel"
	//ambient_sounds = list(put some new stuff here fgt)

/area/maintenance/cargobot/fore
	icon_state = "fmaint"
/area/maintenance/cargobot/aft
	icon_state = "amaint"
/area/maintenance/cargobot/port //not used by rock2, but some other schmuck can if they want
	icon_state = "pmaint"
/area/maintenance/cargobot/star //ditto^
	icon_state = "smaint"
/area/maintenance/cargobot/center
	icon_state = "maintcentral"


//TELELELELELELELELELELELELELELEcoms

/area/tcommsat/powercontrol //Tcomm satellite only has 4 areas and it needs at least 6
	name = "Telecoms Power Control"
	icon_state = "tcomsatwest"	//temporary, since this isn't always going to be on this side in all maps, right?
/area/tcommsat/generic
	name = "Telecoms"
	icon_state = "tcomsatcham" //temporary?
/area/tcommsat/storage  //did I say 6 I meant more than that clearly		hey I did say 'at leat' tho
	name = "Telecoms Storage"
	icon_state = "tcomsatstore"	//I only made this a separate area cuz I noticed the icon state already existed
/area/tcommsat/engishuttle	//this area exists because LZ is a spooby
	name = "Telecom Engineer Shuttle Dock"
	icon_state = "tcomsateast"	//temporary, since this isn't always going to be on the oh who the fuck am I kidding I'm the only fucktard that wanted to do this in the first place nobody else wants the engi shuttle here in the first place right? --LZ


//AI SATELLITE AREAS - Since this got removed,,,,, Fuck

/area/aisat
	name = "\improper AI Satellite Exterior"
	icon_state = "yellow"

/area/aisat/communications //- QUI IS RESPONSIBLE FOR THIS PROBABLY - lol old comment. Also, this area not relevant if the AI sat and telecoms are on the same Zlevel, so hey!
    name = "\improper AI Satellite Communications"
    icon_state = "storage"

/area/aisat/maintenance
	name = "\improper AI Satellite Maintenance"
	icon_state = "storage"

/area/aisat/engiestation
	name = "\improper AI Satellite Engineering Outpost"
	icon_state = "construction"

/area/aisat/entrance
	name = "\improper AI Satellite Entrance"
	icon_state = "ai_foyer"
/area/aisat/entrance/control //this is for my own sanity reeeeeeeee  --LZ
	name = "\improper AI Satellite Control Room"

//OTHER MISCELLANY

/area/hallway/secondary/garden //why the fuck was this originally an instance of ../secondary/construction? the fuck are you buggernuts at Paradise smoking?
	name = "Garden"
	icon_state = "hydro"

/area/blueshield  //this got removed and I want it back chew my pingas
	name = "Blueshield's office"
	icon_state = "blueold"

/area/crew_quarters/mimeoffice
	name = "Mime's Office"
	icon = 'icons/turf/areas2.dmi'
	icon_state = "..."
/area/crew_quarters/clownoffice
	name = "Clown's Office"
	icon = 'icons/turf/areas2.dmi'
	icon_state = "honk"

/area/civilian  //base area since it doesn't exist and hey maybe silly inheritance shenanigans can ensue??
	name = "blarg"
	icon_state = "crew_quarters"

/area/civilian/petstore
	name = "Pet Store"
//	icon_state = "chungus"
/area/civilian/chang
	name = "Mr. Chang's"

/area/mine/podbay
	name = "Mining Podbay"
//butts