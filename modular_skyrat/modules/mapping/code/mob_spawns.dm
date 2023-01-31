//SPAWNERS//

/obj/effect/mob_spawn/ghost_role/human/ash_walker/special(mob/living/carbon/human/spawned_human)
	. = ..()
	if(SSmapping.level_trait(spawned_human.z, ZTRAIT_ICE_RUINS_UNDERGROUND) || SSmapping.level_trait(spawned_human.z, ZTRAIT_ICE_RUINS_UNDERGROUND))
		ADD_TRAIT(spawned_human, TRAIT_NOBREATH, ROUNDSTART_TRAIT)
		ADD_TRAIT(spawned_human, TRAIT_RESISTCOLD, ROUNDSTART_TRAIT)

/obj/effect/mob_spawn/ghost_role/human/blackmarket
	name = "cryogenics pod"
	prompt_name = "a blackmarket dealer"
	desc = "A humming cryo pod. The machine is attempting to wake up its occupant."
	mob_name = "a black market dealer"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper"
	mob_species = /datum/species/human
	you_are_text = "You are a black market dealer, with shop set up in Nanotrasen Space."
	flavour_text = "FTU, Independent.. whatever, whoever you are. It doesn't matter out here. \
	You've set up shop in a slightly shady, yet functional little asteroid for your dealings. \
	Explore space, find valuable artifacts and nice loot - and pawn it off to those stooges at NT. \
	Or perhaps more exotic customers are in local space...?"
	important_text = "You are not an antagonist."
	outfit = /datum/outfit/black_market
	quirks_enabled = TRUE
	random_appearance = FALSE
	loadout_enabled = TRUE

/datum/outfit/black_market
	name = "Black Market Trader"
	uniform = /obj/item/clothing/under/rank/cargo/tech
	shoes = /obj/item/clothing/shoes/laceup
	id = /obj/item/card/id/away/blackmarket

/datum/outfit/black_market/post_equip(mob/living/carbon/human/shady, visualsOnly)
	handlebank(shady)
	return ..()

/obj/effect/mob_spawn/ghost_role/human/ds2
	name = "DS2 personnel"
	prompt_name = "DS2 personnel"
	you_are_text = "You are a syndicate operative, employed in a top secret research facility developing biological weapons."
	flavour_text = "Unfortunately, your hated enemy, Nanotrasen, has begun mining in this sector. Continue operating as best you can, and try to keep a low profile."
	quirks_enabled = TRUE
	random_appearance = FALSE
	computer_area = /area/ruin/space/has_grav/skyrat/interdynefob/service/dorms

/obj/effect/mob_spawn/ghost_role/human/ds2/prisoner
	name = "Syndicate Prisoner"
	prompt_name = "a Syndicate prisoner"
	you_are_text = "You are a syndicate prisoner aboard an unknown ship."
	flavour_text = "Unaware of where you are, all you know is you are a prisoner. The plastitanium should clue you into who your captors are... as for why you're here? That's for you to know, and for us to find out."
	important_text = "You are still subject to standard prisoner policy and must Adminhelp before antagonizing DS2."
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	outfit = /datum/outfit/ds2/prisoner

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate
	name = "Syndicate Operative"
	prompt_name = "a Syndicate operative"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	you_are_text = "You are an operative of the Sothran Syndicate terrorist cell, employed onboard the Deep Space 2 FOB for reasons that are yours."
	flavour_text = "The Sothran Syndicate has found it fit to send a forward operating base to Sector 13 to monitor NT's operations. Your orders are maintaining the ship's integrity and keeping a low profile as well as possible."
	important_text = "You are not an antagonist. Adminhelp before antagonizing station crew."
	outfit = /datum/outfit/ds2/syndicate
	loadout_enabled = TRUE

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate_command
	name = "Syndicate Command Operative"
	prompt_name = "a Syndicate leader"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	you_are_text = "You are a command operative of the Sothran Syndicate terrorist cell, employed onboard the Deep Space 2 FOB to guide it forward in its goals."
	flavour_text = "The Sothran Syndicate has found it fit to send you to help command the forward operating base in Sector 13. Your orders are commanding the crew of DS-2 while keeping a low profile as well as possible."
	important_text = "Keep yourself to the same standards as Command Policy. You are not an antagonist and must Adminhelp before antagonizing station crew."
	outfit = /datum/outfit/ds2/syndicate_command
	loadout_enabled = TRUE

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate/special(mob/living/new_spawn)
	. = ..()
	new_spawn.grant_language(/datum/language/codespeak, TRUE, TRUE, LANGUAGE_MIND)

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate_command/special(mob/living/new_spawn)
	. = ..()
	new_spawn.grant_language(/datum/language/codespeak, TRUE, TRUE, LANGUAGE_MIND)

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate/service
	outfit = /datum/outfit/ds2/syndicate/service

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate/miner
	outfit = /datum/outfit/ds2/syndicate/miner

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate/enginetech
	outfit = /datum/outfit/ds2/syndicate/enginetech

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate/researcher
	outfit = /datum/outfit/ds2/syndicate/researcher

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate/stationmed
	outfit = /datum/outfit/ds2/syndicate/stationmed

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate/brigoff
	outfit = /datum/outfit/ds2/syndicate/brigoff

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate_command/masteratarms
	outfit = /datum/outfit/ds2/syndicate_command/masteratarms

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate_command/corporateliaison
	outfit = /datum/outfit/ds2/syndicate_command/corporateliaison

/obj/effect/mob_spawn/ghost_role/human/ds2/syndicate_command/admiral
	outfit = /datum/outfit/ds2/syndicate_command/admiral

/obj/effect/mob_spawn/ghost_role/human/hotel_staff
	random_appearance = FALSE

/obj/effect/mob_spawn/ghost_role/human/hotel_staff/manager
	name = "staff manager sleeper"
	mob_name = "hotel staff manager"
	outfit = /datum/outfit/hotelstaff/manager
	you_are_text = "You are the manager of a top-of-the-line space hotel!"
	flavour_text = "You are the manager of a top-of-the-line space hotel! Make sure the guests are looked after, the hotel is advertised, and your employees aren't slacking off!"

/obj/effect/mob_spawn/corpse/human/damaged/ashwalker
	mob_type = /mob/living/carbon/human/species/lizard/ashwalker;
	outfit = /datum/outfit/consumed_ashwalker

//OUTFITS//
/datum/outfit/syndicatespace/syndicrew
	ears = /obj/item/radio/headset/cybersun
	id_trim = /datum/id_trim/syndicom/skyrat/crew

/datum/outfit/syndicatespace/syndicaptain
	ears = /obj/item/radio/headset/cybersun/captain
	id_trim = /datum/id_trim/syndicom/skyrat/captain

/datum/outfit/ds2
	name = "default ds2 outfit"

/datum/outfit/ds2/post_equip(mob/living/carbon/human/syndicate, visualsOnly = FALSE)
	var/obj/item/card/id/id_card = syndicate.wear_id
	if(istype(id_card))
		id_card.registered_name = syndicate.real_name
		id_card.update_label()
		id_card.update_icon()

	handlebank(syndicate)
	return ..()

//DS-2 Hostage
/datum/outfit/ds2/prisoner
	name = "Syndicate Prisoner"
	uniform = /obj/item/clothing/under/rank/prisoner/syndicate
	shoes = /obj/item/clothing/shoes/sneakers/crimson
	id = /obj/item/card/id/advanced/prisoner/ds2
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/prisoner

//DS-2 Crew
/datum/outfit/ds2/syndicate
	name = "DS-2 Operative"
	uniform = /obj/item/clothing/under/syndicate/skyrat/tactical
	shoes = /obj/item/clothing/shoes/combat
	ears = /obj/item/radio/headset/interdyne
	back = /obj/item/storage/backpack
	backpack_contents = list(
		/obj/item/storage/box/survival = 1,
		/obj/item/crowbar = 1,
		)
	id = /obj/item/card/id/advanced/black
	implants = list(/obj/item/implant/weapons_auth)
	id_trim = /datum/id_trim/syndicom/skyrat/ds2

/datum/outfit/ds2/syndicate/miner
	name = "DS-2 Mining Officer"
	uniform = /obj/item/clothing/under/syndicate/skyrat/overalls
	belt = /obj/item/storage/bag/ore
	back = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/storage/box/survival = 1,
		/obj/item/crowbar = 1,
		/obj/item/knife/combat/survival = 1,
		/obj/item/t_scanner/adv_mining_scanner/lesser = 1,
		/obj/item/gun/energy/recharge/kinetic_accelerator = 1,
		)
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/miner
	l_pocket = /obj/item/card/mining_point_card
	r_pocket = /obj/item/mining_voucher
	head = /obj/item/clothing/head/soft/black

/datum/outfit/ds2/syndicate/service
	name = "DS-2 General Staff"
	uniform = /obj/item/clothing/under/syndicate/skyrat/tactical
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/syndicatestaff
	back = /obj/item/storage/backpack/satchel
	suit = /obj/item/clothing/suit/apron/chef
	head = /obj/item/clothing/head/soft/mime

/datum/outfit/ds2/syndicate/enginetech
	name = "DS-2 Engine Technician"
	uniform = /obj/item/clothing/under/syndicate/skyrat/overalls
	head = /obj/item/clothing/head/soft/sec/syndicate
	backpack_contents = list(
		/obj/item/storage/box/survival = 1,
		)
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/enginetechnician
	glasses = /obj/item/clothing/glasses/welding/up
	belt = /obj/item/storage/belt/utility/syndicate
	gloves = /obj/item/clothing/gloves/combat

/datum/outfit/ds2/syndicate/researcher
	name = "DS-2 Researcher"
	uniform = /obj/item/clothing/under/rank/rnd/scientist/skyrat/utility/syndicate
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/researcher
	suit = /obj/item/clothing/suit/toggle/labcoat/science
	glasses = /obj/item/clothing/glasses/sunglasses/chemical
	gloves = /obj/item/clothing/gloves/color/black
	back = /obj/item/storage/backpack/satchel

/datum/outfit/ds2/syndicate/stationmed
	name = "DS-2 Medical Officer"
	uniform = /obj/item/clothing/under/syndicate/scrubs
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/medicalofficer
	suit = /obj/item/clothing/suit/toggle/labcoat/interdyne
	belt = /obj/item/storage/belt/medical/paramedic
	gloves = /obj/item/clothing/gloves/latex/nitrile/ntrauma
	back = /obj/item/storage/backpack/satchel
	backpack_contents = list(
		/obj/item/storage/box/survival = 1,
		/obj/item/crowbar = 1,
		/obj/item/storage/medkit/surgery = 1,
		)

/datum/outfit/ds2/syndicate/brigoff
	name = "DS-2 Brig Officer"
	uniform = /obj/item/clothing/under/syndicate/combat
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/brigofficer
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	suit = /obj/item/clothing/suit/armor/bulletproof/old
	back = /obj/item/storage/backpack/security/redsec
	head = /obj/item/clothing/head/helmet/swat/ds
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/redsec
	r_pocket = /obj/item/flashlight/seclite
	mask = /obj/item/clothing/mask/gas/syndicate
	ears = /obj/item/radio/headset/interdyne

/datum/outfit/ds2/syndicate/post_equip(mob/living/carbon/human/syndicate)
	syndicate.faction |= ROLE_SYNDICATE
	return ..()

//DS-2 Command
/datum/outfit/ds2/syndicate_command
	name = "DS-2 Command Operative"
	uniform = /obj/item/clothing/under/syndicate/skyrat/tactical
	shoes = /obj/item/clothing/shoes/combat
	ears = /obj/item/radio/headset/interdyne/command
	back = /obj/item/storage/backpack
	backpack_contents = list(
		/obj/item/storage/box/survival = 1,
		/obj/item/crowbar = 1,
		)
	id = /obj/item/card/id/advanced/black
	implants = list(/obj/item/implant/weapons_auth)
	id_trim = /datum/id_trim/syndicom/skyrat/ds2

/datum/outfit/ds2/syndicate_command/masteratarms
	name = "DS-2 Master At Arms"
	uniform = /obj/item/clothing/under/syndicate/combat
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/masteratarms
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	suit = /obj/item/clothing/suit/armor/vest/warden/syndicate
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/redsec
	back = /obj/item/storage/backpack/satchel/sec/redsec
	head = /obj/item/clothing/head/hats/hos/beret/syndicate
	r_pocket = /obj/item/flashlight/seclite
	implants = list(
		/obj/item/implant/weapons_auth,
		/obj/item/implant/krav_maga
		)

/datum/outfit/ds2/syndicate_command/corporateliaison
	name = "DS-2 Corporate Liasion"
	uniform = /obj/item/clothing/under/syndicate/sniper
	head = /obj/item/clothing/head/fedora/fedblack
	shoes = /obj/item/clothing/shoes/laceup
	back = /obj/item/storage/backpack/satchel
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/corporateliasion

/datum/outfit/ds2/syndicate_command/admiral
	name = "DS-2 Admiral"
	uniform = /obj/item/clothing/under/rank/captain/skyrat/utility/syndicate
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	back = /obj/item/storage/backpack/satchel
	belt = /obj/item/gun/ballistic/automatic/pistol/aps
	head = /obj/item/clothing/head/hats/hos/syndicate
	id = /obj/item/card/id/advanced/gold/generic
	id_trim = /datum/id_trim/syndicom/skyrat/ds2/stationadmiral

/datum/outfit/ds2/syndicate_command/post_equip(mob/living/carbon/human/syndicate)
	syndicate.faction |= ROLE_SYNDICATE
	return ..()

/datum/outfit/hotelstaff
	id = /obj/item/card/id/away/hotel

/datum/outfit/hotelstaff/post_equip(mob/living/carbon/human/staff, visualsOnly = FALSE)
	var/obj/item/card/id/id_card = staff.wear_id
	if(istype(id_card))
		id_card.registered_name = staff.real_name
		id_card.update_label()
		id_card.update_icon()

	handlebank(staff)
	return ..()

/datum/outfit/hotelstaff/manager
	name = "Hotel Staff Manager"
	uniform = /obj/item/clothing/under/suit/red
	shoes = /obj/item/clothing/shoes/laceup
	r_pocket = /obj/item/radio/off
	back = /obj/item/storage/backpack
	implants = list(/obj/item/implant/mindshield, /obj/item/implant/exile/noteleport)
	id = /obj/item/card/id/away/hotel/manager

/datum/outfit/hotelstaff/security
	r_hand = /obj/item/gun/energy/laser/scatter/shotty // SKYRAT EDIT ADD - SPAWNS IN HAND INSTEAD OF ON MAP
	id = /obj/item/card/id/away/hotel/security

//Lost Space Truckers: Six people stranded in deep space aboard a cargo freighter. They must survive their marooning and cooperate.

/obj/effect/mob_spawn/ghost_role/human/lostcargo
	name = "freighter cryo crew pod"
	prompt_name = "a lost cargo tech"
	desc = "A humming cryo pod. There's a freight hauler inside."
	mob_name = "Freighter Crew"
	outfit = /datum/outfit/freighter_crew
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper"
	mob_species = /datum/species/human
	you_are_text = "You were running cargo, a typical freight job until pirates attacked. You and your crewmates just barely made it, but the engines are shot. You're trapped in space now, only able to work together to survive this nightmare."
	flavour_text = "You were running cargo, a typical freight job until pirates attacked. You and your crewmates just barely made it, but the engines are shot. You're trapped in space now, only able to work together to survive this nightmare."
	important_text = "Work with your crew and don't abandon them. You are not directly working with NT, you are an independent freighter crew for the ship's Chief. Your job was merely being a deckhand doing freight work and helping with kitchen prep."
	random_appearance = FALSE
	quirks_enabled = TRUE
	loadout_enabled = TRUE

/datum/outfit/freighter_crew
	name = "Freighter Crew"
	uniform = /obj/item/clothing/under/rank/cargo/tech/skyrat/casualman
	shoes = /obj/item/clothing/shoes/workboots
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/away/freightcrew

/datum/outfit/freighter_crew/post_equip(mob/living/carbon/human/crewman, visualsOnly)
	var/obj/item/card/id/id_card = crewman.wear_id
	if(istype(id_card))
		id_card.registered_name = crewman.real_name
		id_card.update_label()
		id_card.update_icon()

	handlebank(crewman)
	return ..()

/obj/effect/mob_spawn/ghost_role/human/lostminer
	name = "freighter cryo excavator pod"
	prompt_name = "a lost miner"
	desc = "A humming cryo pod. There's an excavation worker inside."
	mob_name = "Freighter Excavator"
	outfit = /datum/outfit/freighter_excavator
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper"
	mob_species = /datum/species/human
	you_are_text = "You were running cargo, a typical freight job until pirates attacked. You and your crewmates just barely made it, but the engines are shot. You're trapped in space now, only able to work together to survive this nightmare."
	flavour_text = "You were running cargo, a typical freight job until pirates attacked. You and your crewmates just barely made it, but the engines are shot. You're trapped in space now, only able to work together to survive this nightmare."
	important_text = "Work with your crew and don't abandon them. You are not directly working with NT, you are an independent freighter crew working under the ship Chief. Your role was to be an excavation and salvage worker for the ship."
	random_appearance = FALSE
	quirks_enabled = TRUE
	loadout_enabled = TRUE

/datum/outfit/freighter_excavator
	name = "Freighter Excavator"
	uniform = /obj/item/clothing/under/rank/cargo/tech/skyrat/gorka
	shoes = /obj/item/clothing/shoes/workboots/mining
	back = /obj/item/storage/backpack
	backpack_contents = list(/obj/item/flashlight/seclite=1,\
		/obj/item/knife/combat/survival=1,
		/obj/item/mining_voucher=1,
		/obj/item/t_scanner/adv_mining_scanner/lesser=1,
		/obj/item/gun/energy/recharge/kinetic_accelerator=1,\
		/obj/item/stack/marker_beacon/ten=1,
		)
	r_pocket = /obj/item/storage/bag/ore
	id = /obj/item/card/id/away/freightmine

/datum/outfit/freighter_excavator/post_equip(mob/living/carbon/human/crewman, visualsOnly)
	var/obj/item/card/id/id_card = crewman.wear_id
	if(istype(id_card))
		id_card.registered_name = crewman.real_name
		id_card.update_label()
		id_card.update_icon()

	handlebank(crewman)
	return ..()

/obj/effect/mob_spawn/ghost_role/human/lostcargoqm
	name = "freighter cryo boss pod"
	prompt_name = "a lost Quartermaster"
	desc = "A humming cryo pod. You see someone who looks In Charge inside."
	mob_name = "Freighter Chief"
	outfit = /datum/outfit/freighter_boss
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper"
	mob_species = /datum/species/human
	you_are_text = "You and your crew were running a normal freight haul until a pirate attack knocked out the engines. All you can do now is try and survive and keep your crew alive."
	flavour_text = "You and your crew were running a normal freight haul until a pirate attack knocked out the engines. All you can do now is try and survive and keep your crew alive."
	important_text = "Do not abandon your crew, lead them and work with them to survive. You are not directly working with NT, you are an independent freighter crew. You are the captain of the ship, which you purchased a while ago, and are in charge of the crew."
	random_appearance = FALSE
	quirks_enabled = TRUE
	loadout_enabled = TRUE

/datum/outfit/freighter_boss
	name = "Freighter Boss"
	uniform = /obj/item/clothing/under/rank/cargo/tech/skyrat/turtleneck
	shoes = /obj/item/clothing/shoes/workboots
	neck = /obj/item/clothing/neck/cloak/qm
	back = /obj/item/storage/backpack
	backpack_contents = list(
		/obj/item/megaphone/cargo=1,
		)
	id = /obj/item/card/id/away/silver/freightqm

/datum/outfit/freighter_boss/post_equip(mob/living/carbon/human/crewman, visualsOnly)
	var/obj/item/card/id/id_card = crewman.wear_id
	if(istype(id_card))
		id_card.registered_name = crewman.real_name
		id_card.update_label()
		id_card.update_icon()

	handlebank(crewman)
	return ..()

//Port Tarkon, 6 people trapped in a revamped charlie-station like ghost role. Survive the aliens and threats, Fix the port and/or finish construction

/obj/effect/mob_spawn/ghost_role/human/tarkon
	name = "P-T Abandoned Crew"
	prompt_name = "an abandoned cargo member"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper"
	you_are_text = "You are an abandoned member of Port Tarkon, an attempt to create steady living vaults within large asteroids. You have no real idea who Interdyne is, And your last recollection of NT is the producer of some... Less than ethically obtained goods on the port."
	flavour_text = "Something went wrong. Morality of experiments went awry, expansions were made before scans were fully done and now you have to deal with the aftermath of your past crews exodus. Bring P-T to the success it was ment to be, or die trying. (OOC note: This ghost role was not designed with Plasmamen or Vox in mind. While there are some accommodations so that they can survive, it should be noted that they were not the focal point whilst designing Port Tarkon. The closet in the middle of the room above contains the 'accommodations' for those species.)"
	important_text = "DO NOT abandon the port, PERIOD, but using the ship to buy more items or get help is good, if not ideal. Do not trade special equipment to the station. Unwelcomed and uninvited guests are not obligated to your kindness."
	outfit = /datum/outfit/tarkon
	loadout_enabled = TRUE
	quirks_enabled = TRUE
	random_appearance = FALSE
	computer_area = /area/ruin/space/has_grav/port_tarkon/centerhall

/datum/outfit/tarkon
	name = "default port tarkon outfit"
	uniform = /obj/item/clothing/under/rank/cargo/tech/skyrat/utility
	back = /obj/item/storage/backpack
	shoes = /obj/item/clothing/shoes/winterboots
	gloves = /obj/item/clothing/gloves/fingerless
	glasses = /obj/item/clothing/glasses/sunglasses
	id = /obj/item/card/id/away/tarkon/cargo
	l_pocket = /obj/item/card/mining_point_card
	r_pocket = /obj/item/mining_voucher
	ears = /obj/item/radio/headset/tarkon

/datum/outfit/tarkon/post_equip(mob/living/carbon/human/tarkon, visualsOnly = FALSE)
	var/obj/item/card/id/id_card = tarkon.wear_id
	if(istype(id_card))
		id_card.registered_name = tarkon.real_name
		id_card.update_label()
		id_card.update_icon()
	var/obj/item/radio/target_radio = tarkon.ears
	target_radio.set_frequency(FREQ_TARKON)
	target_radio.recalculateChannels()

	handlebank(tarkon)
	return ..()

/obj/effect/mob_spawn/ghost_role/human/tarkon/sci
	prompt_name = "an abandoned scientist"
	outfit = /datum/outfit/tarkon/sci

/datum/outfit/tarkon/sci
	name = "Port Tarkon Science Outfit"
	uniform = /obj/item/clothing/under/rank/rnd/scientist/skyrat/utility
	glasses = /obj/item/clothing/glasses/hud/diagnostic
	id = /obj/item/card/id/away/tarkon/sci
	l_hand = /obj/item/inducer
	l_pocket = null
	r_pocket = /obj/item/stock_parts/cell/high

/obj/effect/mob_spawn/ghost_role/human/tarkon/med
	prompt_name = "an abandoned medical resident"
	outfit = /datum/outfit/tarkon/med

/datum/outfit/tarkon/med
	name = "Port Tarkon Medical Outfit"
	uniform = /obj/item/clothing/under/rank/medical/doctor/skyrat/utility
	glasses = /obj/item/clothing/glasses/hud/health
	id = /obj/item/card/id/away/tarkon/med
	neck = /obj/item/clothing/neck/stethoscope
	l_pocket = /obj/item/healthanalyzer
	r_pocket = /obj/item/stack/medical/suture/medicated

/obj/effect/mob_spawn/ghost_role/human/tarkon/engi
	prompt_name = "an abandoned maintenance engineer"
	outfit = /datum/outfit/tarkon/engi

/datum/outfit/tarkon/engi
	name = "Port Tarkon Engineering Outfit"
	uniform = /obj/item/clothing/under/rank/engineering/engineer/skyrat/utility
	glasses = /obj/item/clothing/glasses/meson/engine/tray
	id = /obj/item/card/id/away/tarkon/engi
	gloves = /obj/item/clothing/gloves/combat
	l_pocket = /obj/item/tank/internals/emergency_oxygen/engi
	r_pocket = /obj/item/stack/cable_coil

/obj/effect/mob_spawn/ghost_role/human/tarkon/sec
	prompt_name = "an abandoned security deputy"
	outfit = /datum/outfit/tarkon/sec

/datum/outfit/tarkon/sec
	name = "Port Tarkon Security Outfit"
	uniform = /obj/item/clothing/under/rank/security/skyrat/utility/redsec
	glasses = /obj/item/clothing/glasses/hud/security/redsec
	gloves = /obj/item/clothing/gloves/tackler/combat
	id = /obj/item/card/id/away/tarkon/sec
	l_pocket = /obj/item/melee/baton/telescopic
	r_pocket = /obj/item/grenade/barrier
	skillchips = list(/obj/item/skillchip/chameleon/reload)

/obj/effect/mob_spawn/ghost_role/human/tarkon/ensign
	name = "P-T Abandoned Ensign"
	prompt_name = "an abandoned ensign"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper-o"
	you_are_text = "You were tasked by Tarkon Industries to Port Tarkon as a low-level command member, Holding no actual command, but as just another scapegoat to blame should it failed... And failed it did. Scan were never done when the overseer commanded construction, and you were left, forever branded with a task not possible for you"
	flavour_text = "The rest of command bailed, and left as nothing more than a glorified assistant, you are held responsible should you be unable to wrangle what hopes of success Headquarters has. Find the blueprints and keep them close, Lest looters and raiders plan to seize what isn't theirs. (OOC note: This ghost role was not designed with Plasmamen or Vox in mind. While there are some accommodations so that they can survive, it should be noted that they were not the focal point whilst designing Port Tarkon. The closet in the middle of the room above contains the 'accommodations' for those species.)"
	important_text = "People aren't obligated to listen to you, and you are, otherwise, just another body with some remnant of control. Make sure important items aren't traded and do your best to survive in the hellscape left for you. Unwelcomed and uninvited guests are not obligated to your kindness."
	outfit = /datum/outfit/tarkon/ensign

/datum/outfit/tarkon/ensign //jack of all trades, master of none, spent all his credits, every last one
	name = "Port Tarkon Ensigns Outfit"
	uniform = /obj/item/clothing/under/misc/skyrat/utility
	ears = /obj/item/radio/headset/tarkon/ensign
	id = /obj/item/card/id/away/tarkon/ensign
	neck = /obj/item/clothing/neck/security_cape/armplate
	gloves = /obj/item/clothing/gloves/combat
	l_pocket = null
	r_pocket = null
	skillchips = list(/obj/item/skillchip/chameleon/reload)

/datum/outfit/proc/handlebank(mob/living/carbon/human/owner)
	var/datum/bank_account/offstation_bank_account = new(owner.real_name)
	owner.account_id = offstation_bank_account.account_id
	offstation_bank_account.replaceable = FALSE
	offstation_bank_account.account_job = new /datum/job/ghost_role //note to self: Replace later
	owner.add_mob_memory(/datum/memory/key/account, remembered_id = owner.account_id)
	if(owner.wear_id)
		var/obj/item/card/id/id_card = owner.wear_id
		id_card.registered_account = offstation_bank_account
	return

//ITEMS//
/obj/item/radio/headset/cybersun
	keyslot = new /obj/item/encryptionkey/headset_syndicate/cybersun

/obj/item/radio/headset/cybersun/captain
	name = "cybersun captain headset"
	desc = "The headset of the boss."
	command = TRUE

/obj/item/radio/headset/tarkon
	name = "tarkon headset"
	freerange = TRUE
	freqlock = TRUE
	keyslot = new /obj/item/encryptionkey/headset_cargo/tarkon

/obj/item/radio/headset/tarkon/ensign //spoiler for upcoming update
	name = "tarkon ensign headset"
	desc = "A headset personally handed to trusted crew of Tarkon. It fills you with will to do... Something."
	command = TRUE

//OBJECTS//
/obj/structure/showcase/machinery/oldpod/used
	icon = 'modular_skyrat/modules/cryosleep/icons/cryogenics.dmi'
	icon_state = "cryopod-open"

//IDS//

/obj/item/card/id/away/silver
	name = "old silver identification card"
	desc = "A perfectly generic identification card. Looks like it could use some flavor. This one looks like it belonged to someone important."
	wildcard_slots = WILDCARD_LIMIT_SILVER

/obj/item/card/id/away/blackmarket
	name = "scuffed ID card"
	desc = "A faded, scuffed, plastic ID card. You can make out the rank \"Deck Crewman\"."
	trim = /datum/id_trim/away/blackmarket

/datum/id_trim/away/blackmarket
	access = list(ACCESS_AWAY_GENERIC4)
	assignment = "Deck Crewman"

/obj/item/card/id/away/freightcrew
	name = "Freighter ID"
	desc = "An ID card marked with the rank of Freight Hauler."
	trim = /datum/id_trim/job/cargo_technician

/obj/item/card/id/away/freightmine
	name = "Freighter ID"
	desc = "An ID card marked with the rank of Freight Ship Excavator."
	trim = /datum/id_trim/job/shaft_miner

/obj/item/card/id/away/silver/freightqm
	name = "Freighter Deck Chief ID"
	desc = "An ID card marked with the rank of Freight Deck Chief."
	trim = /datum/id_trim/job/quartermaster

/obj/item/card/id/away/hotel/manager
	name = "Manager ID"
	trim = /datum/id_trim/away/hotel/manager

/datum/id_trim/away/hotel
	assignment = "Hotel Staff"

/datum/id_trim/away/hotel/manager
	assignment = "Hotel Manager"

/datum/id_trim/away/hotel/security
	assignment = "Hotel Security"

/datum/id_trim/away/tarkon
	assignment = "P-T Cargo Personell"
	access = list(ACCESS_AWAY_GENERAL, ACCESS_WEAPONS, ACCESS_TARKON)

/datum/id_trim/away/tarkon/sec
	assignment = "P-T Port Guard"
	access = list(ACCESS_AWAY_GENERAL, ACCESS_WEAPONS, ACCESS_TARKON)

/datum/id_trim/away/tarkon/med
	assignment = "P-T Trauma Medic"
	access = list(ACCESS_MEDICAL, ACCESS_AWAY_GENERAL, ACCESS_WEAPONS, ACCESS_TARKON)

/datum/id_trim/away/tarkon/eng
	assignment = "P-T Maintenance Crew"

/datum/id_trim/away/tarkon/sci
	assignment = "P-T Field Researcher"
	access = list(ACCESS_ROBOTICS, ACCESS_AWAY_GENERAL, ACCESS_WEAPONS, ACCESS_TARKON)

/datum/id_trim/away/tarkon/ensign
	assignment = "Tarkon Ensign"
	access = list(ACCESS_MEDICAL, ACCESS_ROBOTICS, ACCESS_AWAY_GENERAL, ACCESS_TARKON, ACCESS_WEAPONS)

/obj/item/card/id/away/tarkon/sci  //original tarkon ID is defined in fluff
	name = "P-T field researcher's access card"
	desc = "An access card designated for \"the science team\". You are forgotten basically immediately when it comes to the lab."
	trim = /datum/id_trim/away/tarkon/sci

/obj/item/card/id/away/tarkon/med
	name = "P-T trauma medic's access card"
	desc = "An access card designated for \"medical staff\". You provide the medic bags."
	trim = /datum/id_trim/away/tarkon/med

/obj/item/card/id/away/tarkon/sec
	name = "P-T resident deputy's access card"
	desc = "An access card designated for \"security members\". Everyone wants your guns, partner. Yee-haw."
	trim = /datum/id_trim/away/tarkon/sec

/obj/item/card/id/away/tarkon/cargo
	name = "P-T cargo hauler's access card"
	desc = "An access card designated for \"cargo's finest\". You're also a part time space miner, when cargonia is quiet."
	trim = /datum/id_trim/away/tarkon


/obj/item/card/id/away/tarkon/engi
	name = "P-T maintenance engineer's access card"
	desc = "An access card designated for \"engineering staff\". You're going to be the one everyone points at to fix stuff, lets be honest."
	trim = /datum/id_trim/away/tarkon/eng

/obj/item/card/id/away/tarkon/ensign
	name = "Tarkon ensign's access card"
	desc = "An access card designated for \"Tarkon ensign\". No one has to listen to you... But you're the closest there is for command around here."
	trim = /datum/id_trim/away/tarkon/ensign

//CRYO CONSOLES
/obj/machinery/computer/cryopod/interdyne
	radio = /obj/item/radio/headset/interdyne
	announcement_channel = RADIO_CHANNEL_INTERDYNE
	req_one_access = list("syndicate_leader")

/obj/machinery/computer/cryopod/tarkon
	radio = /obj/item/radio/headset/tarkon
	announcement_channel = RADIO_CHANNEL_TARKON
	req_one_access = list("tarkon")
