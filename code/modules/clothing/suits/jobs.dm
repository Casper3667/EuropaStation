/*
 * Job related
 */

//Botonist
/obj/item/clothing/suit/apron
	name = "apron"
	desc = "A basic blue apron."
	icon_state = "apron"
	item_state = "apron"
	blood_overlay_type = "armor"
	body_parts_covered = 0
	allowed = list (/obj/item/reagent_containers/spray/plantbgone,/obj/item/analyzer/plant_analyzer,/obj/item/seeds,/obj/item/reagent_containers/glass/fertilizer,/obj/item/material/minihoe)

//Captain
/obj/item/clothing/suit/captunic
	name = "captain's parade tunic"
	desc = "Worn by a Captain to show their class."
	icon_state = "captunic"
	item_state = "captunic"
	body_parts_covered = UPPER_TORSO|ARMS
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/captunic/capjacket
	name = "captain's uniform jacket"
	desc = "A less formal jacket for everyday captain use."
	icon_state = "capjacket"
	item_state = "capjacket"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	flags_inv = 0

//Chaplain
/obj/item/clothing/suit/chaplain_hoodie
	name = "chaplain hoodie"
	desc = "This suit says to you 'hush'!"
	icon_state = "chaplain_hoodie"
	item_state = "chaplain_hoodie"
	body_parts_covered = UPPER_TORSO|ARMS

//Chaplain
/obj/item/clothing/suit/nun
	name = "nun robe"
	desc = "Maximum piety in this star system."
	icon_state = "nun"
	item_state = "nun"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	flags_inv = HIDESHOES|HIDEJUMPSUIT

//Chef
/obj/item/clothing/suit/chef
	name = "chef's apron"
	desc = "An apron used by a high class chef."
	icon_state = "chef"
	item_state = "chef"
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	allowed = list (/obj/item/material/knife)

//Chef
/obj/item/clothing/suit/chef/classic
	name = "A classic chef's apron."
	desc = "A basic, dull, white chef's apron."
	icon_state = "apronchef"
	item_state = "apronchef"
	blood_overlay_type = "armor"
	body_parts_covered = 0

//Security
/obj/item/clothing/suit/security/navyofficer
	name = "security officer's jacket"
	desc = "This jacket is for those special occasions when a security officer actually feels safe."
	icon_state = "officerbluejacket"
	item_state = "officerbluejacket"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/suit/security/navywarden
	name = "warden's jacket"
	desc = "Perfectly suited for the warden that wants to leave an impression of style on those who visit the brig."
	icon_state = "wardenbluejacket"
	item_state = "wardenbluejacket"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/suit/security/navyhos
	name = "head of security's jacket"
	desc = "This piece of clothing was specifically designed for asserting superior authority."
	icon_state = "hosbluejacket"
	item_state = "hosbluejacket"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

//Detective
/obj/item/clothing/suit/storage/det_trench
	name = "brown trenchcoat"
	desc = "A rugged canvas trenchcoat, designed and created by TX Fabrication Corp. The coat is externally impact resistant - perfect for your next act of autodefenestration!"
	icon_state = "detective"
	item_state = "det_suit"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	allowed = list(/obj/item/tank/emergency,/obj/item/flashlight,/obj/item/gun/composite,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/handcuffs,/obj/item/storage/fancy/cigarettes,/obj/item/flame/lighter,/obj/item/taperecorder)
	armor = list(melee = 50, bullet = 10, laser = 25, energy = 10, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/det_trench/grey
	name = "grey trenchcoat"
	icon_state = "detective2"

//Forensics
/obj/item/clothing/suit/storage/forensics
	name = "jacket"
	desc = "A forensics technician jacket."
	item_state = "det_suit"
	body_parts_covered = UPPER_TORSO|ARMS
	allowed = list(/obj/item/tank/emergency,/obj/item/flashlight,/obj/item/gun/composite,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/handcuffs,/obj/item/taperecorder)
	armor = list(melee = 10, bullet = 10, laser = 15, energy = 10, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/forensics/red
	name = "red jacket"
	desc = "A red forensics technician jacket."
	icon_state = "forensics_red"

/obj/item/clothing/suit/storage/forensics/blue
	name = "blue jacket"
	desc = "A blue forensics technician jacket."
	icon_state = "forensics_blue"

//Engineering
/obj/item/clothing/suit/storage/hazardvest
	name = "hazard vest"
	desc = "A high-visibility vest used in work zones."
	icon_state = "hazard"
	item_state = "hazard"
	blood_overlay_type = "armor"
	allowed = list (/obj/item/analyzer, /obj/item/flashlight, /obj/item/multitool, /obj/item/pipe_painter, /obj/item/radio, /obj/item/t_scanner, \
	/obj/item/crowbar, /obj/item/screwdriver, /obj/item/weldingtool, /obj/item/wirecutters, /obj/item/wrench, /obj/item/tank/emergency, \
	/obj/item/clothing/mask/gas, /obj/item/taperoll/engineering)
	body_parts_covered = UPPER_TORSO

/obj/item/clothing/suit/storage/hazardvest/blue
	name = "blue hazard vest"
	desc = "A high-visibility vest used in work zones. This one is blue!"
	icon_state = "hazard_b"

/obj/item/clothing/suit/storage/hazardvest/white
	name = "white hazard vest"
	desc = "A high-visibility vest used in work zones. This one has a red cross!"
	icon_state = "hazard_w"

/obj/item/clothing/suit/storage/hazardvest/green
	name = "green hazard vest"
	desc = "A high-visibility vest used in work zones. This one is green!"
	icon_state = "hazard_g"

//Lawyer
/obj/item/clothing/suit/storage/toggle/lawyer/bluejacket
	name = "Blue Suit Jacket"
	desc = "A snappy dress jacket."
	icon_state = "suitjacket_blue_open"
	item_state = "suitjacket_blue_open"
	icon_open = "suitjacket_blue_open"
	icon_closed = "suitjacket_blue"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/lawyer/purpjacket
	name = "Purple Suit Jacket"
	desc = "A snappy dress jacket."
	icon_state = "suitjacket_purp"
	item_state = "suitjacket_purp"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS

//Internal Affairs
/obj/item/clothing/suit/storage/toggle/internalaffairs
	name = "Internal Affairs Jacket"
	desc = "A smooth black jacket."
	icon_state = "ia_jacket_open"
	item_state = "ia_jacket"
	icon_open = "ia_jacket_open"
	icon_closed = "ia_jacket"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS



//Medical
/obj/item/clothing/suit/storage/toggle/fr_jacket
	name = "first responder jacket"
	desc = "A high-visibility jacket worn by medical first responders."
	icon_state = "fr_jacket_open"
	item_state = "fr_jacket"
	icon_open = "fr_jacket_open"
	icon_closed = "fr_jacket"
	blood_overlay_type = "armor"
	allowed = list(/obj/item/stack/medical, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/hypospray, /obj/item/reagent_containers/syringe, \
	/obj/item/healthanalyzer, /obj/item/flashlight, /obj/item/radio, /obj/item/tank/emergency)
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/fr_jacket/ems
	name = "\improper EMS jacket"
	desc = "A dark blue, martian-pattern, EMS jacket. It sports high-visibility reflective stripes and a star of life on the back."
	icon_state = "ems_jacket_closed"
	item_state = "ems_jacket_closed"
	icon_open = "ems_jacket_open"
	icon_closed = "ems_jacket_closed"

/obj/item/clothing/suit/surgicalapron
	name = "surgical apron"
	desc = "A sterile blue apron for performing surgery."
	icon_state = "surgical"
	item_state = "surgical"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	allowed = list(/obj/item/stack/medical, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/hypospray, /obj/item/reagent_containers/syringe, \
	/obj/item/healthanalyzer, /obj/item/flashlight, /obj/item/radio, /obj/item/tank/emergency,/obj/item/scalpel,/obj/item/retractor,/obj/item/hemostat, \
	/obj/item/cautery,/obj/item/bonegel,/obj/item/FixOVein)

//Mime
/obj/item/clothing/suit/suspenders
	name = "suspenders"
	desc = "They suspend the illusion of the mime's play."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "suspenders"
	blood_overlay_type = "armor" //it's the less thing that I can put here
	body_parts_covered = 0