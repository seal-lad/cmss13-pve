/datum/equipment_preset/uscm_event
	name = "USCM (Event Roles)"
	faction = FACTION_MARINE
	faction_group = FACTION_LIST_UA
	minimum_age = 30
	languages = list(LANGUAGE_ENGLISH)


/*****************************************************************************************************/

/datum/equipment_preset/uscm_event/colonel
	name = "USCM O-6 - Colonel (High Command)"
	flags = EQUIPMENT_PRESET_EXTRA

	idtype = /obj/item/card/id/general
	access = list(ACCESS_MARINE_MEDBAY, ACCESS_MARINE_CHEMISTRY, ACCESS_MARINE_MORGUE)
	assignment = JOB_COLONEL
	rank = JOB_COLONEL
	paygrades = list(PAY_SHORT_MO6 = JOB_PLAYTIME_TIER_0)
	role_comm_title = "COL"
	minimum_age = 40
	skills = /datum/skills/general
	languages = ALL_HUMAN_LANGUAGES //Know your enemy.

	utility_under = list(/obj/item/clothing/under/marine,/obj/item/clothing/under/marine/officer/command)
	utility_hat = list(/obj/item/clothing/head/cmcap,/obj/item/clothing/head/beret/cm/tan)
	utility_extra = list(/obj/item/clothing/glasses/sunglasses,/obj/item/clothing/glasses/sunglasses/big,/obj/item/clothing/glasses/sunglasses/aviator,/obj/item/clothing/glasses/mbcg)

	service_under = list(/obj/item/clothing/under/marine/officer/formal/white, /obj/item/clothing/under/marine/officer/formal/black)
	service_shoes = list(/obj/item/clothing/shoes/laceup)
	service_extra = list(/obj/item/clothing/suit/storage/jacket/marine/dress/officer/bomber)
	service_hat = list(/obj/item/clothing/head/beret/cm, /obj/item/clothing/head/beret/marine/commander/dress, /obj/item/clothing/head/beret/marine/commander/black)

	dress_under = list(/obj/item/clothing/under/marine/dress/blues/general)
	dress_over = list(/obj/item/clothing/suit/storage/jacket/marine/dress/blues/officer)
	dress_hat = list(/obj/item/clothing/head/marine/dress_cover/officer)
	dress_extra = list(/obj/item/storage/large_holster/ceremonial_sword/full)
	dress_shoes = list(/obj/item/clothing/shoes/laceup)

/datum/equipment_preset/uscm_event/colonel/New()
	. = ..()
	access = get_access(ACCESS_LIST_GLOBAL)

/datum/equipment_preset/uscm_event/colonel/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/highcom(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/bridge(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/service(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/satchel(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/cm(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/mateba/cmateba/full(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/telebaton, WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/device/flash, WEAR_IN_JACKET)

/datum/equipment_preset/uscm_event/general
	name = "USCM O-7 - Brigadier General (High Command)"
	flags = EQUIPMENT_PRESET_EXTRA

	idtype = /obj/item/card/id/general
	access = list(ACCESS_MARINE_MEDBAY, ACCESS_MARINE_CHEMISTRY, ACCESS_MARINE_MORGUE)
	assignment = JOB_GENERAL
	rank = JOB_GENERAL
	paygrades = list(PAY_SHORT_MO7 = JOB_PLAYTIME_TIER_0)
	role_comm_title = "GEN"
	minimum_age = 50
	skills = /datum/skills/general
	languages = ALL_HUMAN_LANGUAGES //Know your enemy.

	service_under = list(/obj/item/clothing/under/marine/officer/general, /obj/item/clothing/under/marine/officer/bridge)
	service_over = list(/obj/item/clothing/suit/storage/jacket/marine/dress/general, /obj/item/clothing/suit/storage/jacket/marine/service, /obj/item/clothing/suit/storage/jacket/marine/service/mp)
	service_gloves = list(/obj/item/clothing/gloves/black, /obj/item/clothing/gloves/marine/dress)
	service_hat = list(/obj/item/clothing/head/general, /obj/item/clothing/head/beret/marine/commander/black)

	dress_under = list(/obj/item/clothing/under/marine/dress/blues/general)
	dress_over = list(/obj/item/clothing/suit/storage/jacket/marine/dress/blues/officer)
	dress_hat = list(/obj/item/clothing/head/marine/dress_cover/officer)

/datum/equipment_preset/uscm_event/general/New()
	. = ..()
	access = get_access(ACCESS_LIST_GLOBAL)

/datum/equipment_preset/uscm_event/general/load_gear(mob/living/carbon/human/new_human)
	//TODO: add backpacks and satchels
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/general(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/centcom(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/highcom(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/mateba/general(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/general(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/dress/general(new_human), WEAR_JACKET)

	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine/pistol/large/mateba/impact(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/phosphorus(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/flashbang(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/MP/general(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/cotablet(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/mateba_case/general(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/restraint/handcuffs(new_human.back), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/telebaton, WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/device/flash, WEAR_IN_JACKET)

	new_human.equip_if_possible(new /obj/item/clothing/glasses/sunglasses(new_human), WEAR_EYES)

/datum/equipment_preset/uscm_event/general/o8
	name = "USCM O-8 - Major General (High Command)"
	paygrades = list(PAY_SHORT_MO8 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/uscm_event/general/o9
	name = "USCM O-9 - Lieutenant General (High Command)"
	paygrades = list(PAY_SHORT_MO9 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/uscm_event/general/o10
	name = "USCM O-10 - General (High Command)"
	paygrades = list(PAY_SHORT_MO10 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/uscm_event/general/o10c
	name = "USCM O-10C - Assistant Commandant of the Marine Corps (High Command)"
	paygrades = list(PAY_SHORT_MO10C = JOB_PLAYTIME_TIER_0)
	assignment = JOB_ACMC
	rank = JOB_ACMC
	role_comm_title = "ACMC"

/datum/equipment_preset/uscm_event/general/o10s
	name = "USCM O-10S - Commandant of the Marine Corps (High Command)"
	paygrades = list(PAY_SHORT_MO10S = JOB_PLAYTIME_TIER_0)
	assignment = JOB_CMC
	rank = JOB_CMC
	role_comm_title = "CMC"

/*****************************************************************************************************/

/datum/equipment_preset/uscm_event/upp_spy
	name = "UPP Spy"
	flags = EQUIPMENT_PRESET_EXTRA

	languages = list(LANGUAGE_ENGLISH, LANGUAGE_RUSSIAN)
	access = list(
		ACCESS_MARINE_ENGINEERING,
		ACCESS_CIVILIAN_ENGINEERING,
		ACCESS_MARINE_MAINT,
		ACCESS_MARINE_OT,
	)
	assignment = JOB_ORDNANCE_TECH
	rank = "UPP"
	paygrades = list(PAY_SHORT_ME1 = JOB_PLAYTIME_TIER_0, PAY_SHORT_ME2 = JOB_PLAYTIME_TIER_1, PAY_SHORT_ME3 = JOB_PLAYTIME_TIER_3)
	role_comm_title = "OT"
	skills = /datum/skills/spy

	dress_under = list(/obj/item/clothing/under/marine/dress/blues)
	dress_over = list(/obj/item/clothing/suit/storage/jacket/marine/dress/blues)
	dress_hat = list(/obj/item/clothing/head/marine/dress_cover)

/datum/equipment_preset/uscm_event/upp_spy/load_gear(mob/living/carbon/human/new_human)
	//TODO: add backpacks and satchels
	var/back_item = /obj/item/storage/backpack/marine/satchel/tech
	if (new_human.client && new_human.client.prefs && (new_human.client.prefs.backbag == 1))
		back_item = /obj/item/storage/backpack/marine/tech

	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/mt(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/engi/OT(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/yellow(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/utility/full(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new back_item(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/demo_scanner(new_human), WEAR_L_STORE)

	//TODO: preload all of those items before equipping the backpack
	//Otherwise, if you spawn the spy next to other people
	//they will see messages for them putting guns and explosives into their backpack...
	new_human.equip_to_slot_or_del(new /obj/item/restraint/handcuffs(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/pistol/np92/suppressed/tranq(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/np92/tranq(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/np92/tranq(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/handcuffs(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/chameleon(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/high_explosive/upp(new_human.back), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic(new_human.back), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic(new_human.back), WEAR_IN_R_STORE)



/*****************************************************************************************************/

/datum/equipment_preset/uscm_event/provost
	name = "USCM Provost"

	idtype = /obj/item/card/id/provost
	skills = /datum/skills/provost

/datum/equipment_preset/uscm_event/provost/New()
	. = ..()
	access = get_access(ACCESS_LIST_MARINE_ALL)

/datum/equipment_preset/uscm_event/provost/enforcer
	name = "Provost Enforcer"

	assignment = JOB_PROVOST_ENFORCER
	rank = "Provost Enforcer"
	paygrades = list(PAY_SHORT_CPO = JOB_PLAYTIME_TIER_0)
	role_comm_title = "PvE"
	flags = EQUIPMENT_PRESET_EXTRA

	dress_under = list(/obj/item/clothing/under/marine/dress/blues)
	dress_over = list(/obj/item/clothing/suit/storage/jacket/marine/dress/blues)
	dress_hat = list(/obj/item/clothing/head/marine/dress_cover)

/datum/equipment_preset/uscm_event/provost/enforcer/load_gear(mob/living/carbon/human/new_human)
	var/back_item = /obj/item/storage/backpack/satchel/sec
	if (new_human.client && new_human.client.prefs && (new_human.client.prefs.backbag == 1))
		back_item = /obj/item/storage/backpack/security

	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/provost(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/mp/provost(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/security/MP/full(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/MP/provost(new_human), WEAR_JACKET)
	if(new_human.disabilities & NEARSIGHTED)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud/prescription(new_human), WEAR_EYES)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/marine/mp/provost(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new back_item(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/shotgun/large/beanbag(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/shotgun/large/slug(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/shield/riot(new_human), WEAR_L_HAND)

	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/regular/response(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/flashbangs(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/energy/taser(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/tear/marine(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/tear/marine(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/tear/marine(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/tear/marine(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/flash(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/restraint/handcuffs(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/shotgun/combat(new_human), WEAR_J_STORE)

/datum/equipment_preset/uscm_event/provost/tml
	name = "Provost Team Leader"
	skills = /datum/skills/CMP

	assignment = JOB_PROVOST_TML
	rank = "Provost Team Leader"
	paygrades = list(PAY_SHORT_CSPO = JOB_PLAYTIME_TIER_0)
	role_comm_title = "PvTML"
	flags = EQUIPMENT_PRESET_EXTRA

	dress_under = list(/obj/item/clothing/under/marine/dress/blues/senior)
	dress_over = list(/obj/item/clothing/suit/storage/jacket/marine/dress/blues/nco)
	dress_hat = list(/obj/item/clothing/head/marine/dress_cover)

/datum/equipment_preset/uscm_event/provost/tml/load_gear(mob/living/carbon/human/new_human)
	var/back_item = /obj/item/storage/backpack/satchel/sec
	if (new_human.client && new_human.client.prefs && (new_human.client.prefs.backbag == 1))
		back_item = /obj/item/storage/backpack/security

	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/provost(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/mp/provost/senior(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/m4a3/vp78(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/MP/provost/tml(new_human), WEAR_JACKET)
	if(new_human.disabilities & NEARSIGHTED)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud/prescription(new_human), WEAR_EYES)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/marine/mp/provost/senior(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new back_item(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/shotgun/large/beanbag(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/shotgun/large/slug(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/shield/riot(new_human), WEAR_L_HAND)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_box/magazine/nade_box/ltl/tear_gas(new_human), WEAR_R_HAND)

	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/regular/response(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/flashbangs(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/energy/taser(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/tear/marine(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/tear/marine(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/tear/marine(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/tear/marine(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/flash(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/restraint/handcuffs(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/shotgun/combat(new_human), WEAR_J_STORE)

/datum/equipment_preset/uscm_event/provost/inspector
	name = "Provost Inspector"

	assignment = JOB_PROVOST_INSPECTOR
	rank = "Provost Inspector"
	paygrades = list(PAY_SHORT_PVI = JOB_PLAYTIME_TIER_0)
	role_comm_title = "PvI"
	flags = EQUIPMENT_PRESET_EXTRA

	dress_under = list(/obj/item/clothing/under/marine/dress/blues/senior)
	dress_over = list(/obj/item/clothing/suit/storage/jacket/marine/dress/blues/officer)
	dress_hat = list(/obj/item/clothing/head/marine/dress_cover/officer)

/datum/equipment_preset/uscm_event/provost/inspector/load_gear(mob/living/carbon/human/new_human)
	var/back_item = /obj/item/storage/backpack/satchel/sec
	if (new_human.client && new_human.client.prefs && (new_human.client.prefs.backbag == 1))
		back_item = /obj/item/storage/backpack/security

	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/provost(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/mp/provost/senior(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/m4a3/vp70(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/provost(new_human), WEAR_JACKET)
	if(new_human.disabilities & NEARSIGHTED)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud/prescription(new_human), WEAR_EYES)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/marine/mp/provost/senior(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new back_item(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/taperecorder(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/listening_bug/radio_linked/hc/pvst(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/listening_bug/radio_linked/hc/pvst(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/listening_bug/radio_linked/hc/pvst(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/MP/provost/light/flexi(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/handheld_distress_beacon/provost(new_human.back), WEAR_IN_BACK)

	new_human.equip_to_slot_or_del(new /obj/item/device/flash(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/restraint/handcuffs(new_human), WEAR_IN_JACKET)

/datum/equipment_preset/uscm_event/provost/inspector/chief
	name = "Provost Chief Inspector"

	assignment = JOB_PROVOST_CINSPECTOR
	rank = JOB_PROVOST_CINSPECTOR
	paygrades = list(PAY_SHORT_PVCI = JOB_PLAYTIME_TIER_0)
	role_comm_title = "PvCI"
	flags = EQUIPMENT_PRESET_EXTRA

	dress_under = list(/obj/item/clothing/under/marine/dress/blues/senior)
	dress_over = list(/obj/item/clothing/suit/storage/jacket/marine/dress/blues/officer)
	dress_hat = list(/obj/item/clothing/head/marine/dress_cover/officer)

/datum/equipment_preset/uscm_event/provost/inspector/chief/load_gear(mob/living/carbon/human/new_human)
	var/back_item = /obj/item/storage/backpack/satchel/sec
	if (new_human.client && new_human.client.prefs && (new_human.client.prefs.backbag == 1))
		back_item = /obj/item/storage/backpack/security

	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/provost(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/mp/provost/chief(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/m4a3/vp70(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/provost/chief(new_human), WEAR_JACKET)
	if(new_human.disabilities & NEARSIGHTED)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud/prescription(new_human), WEAR_EYES)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/marine/mp/provost/chief(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new back_item(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/taperecorder(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/listening_bug/radio_linked/hc/pvst(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/listening_bug/radio_linked/hc/pvst(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/listening_bug/radio_linked/hc/pvst(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/MP/provost/light/flexi(new_human.back), WEAR_IN_BACK)

	new_human.equip_to_slot_or_del(new /obj/item/device/flash(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/restraint/handcuffs(new_human), WEAR_IN_JACKET)

/datum/equipment_preset/uscm_event/provost/inspector/advisor
	name = "Provost Advisor"

	assignment = JOB_PROVOST_ADVISOR
	rank = "Provost Advisor"
	paygrades = list(PAY_SHORT_CSPO = JOB_PLAYTIME_TIER_0)
	role_comm_title = "PvA"
	flags = EQUIPMENT_PRESET_EXTRA

/datum/equipment_preset/uscm_event/provost/marshal/deputy
	name = "Provost Deputy Marshal (MO6)"
	minimum_age = 45
	skills = /datum/skills/general

	assignment = JOB_PROVOST_DMARSHAL
	rank = JOB_PROVOST_DMARSHAL
	paygrades = list(PAY_SHORT_PVDM = JOB_PLAYTIME_TIER_0)
	role_comm_title = PAY_SHORT_PVDM
	flags = EQUIPMENT_PRESET_EXTRA

/datum/equipment_preset/uscm_event/provost/marshal
	name = "Provost Marshal (MO7)"
	minimum_age = 45
	skills = /datum/skills/general

	assignment = JOB_PROVOST_MARSHAL
	rank = "Provost Marshal"
	paygrades = list(PAY_SHORT_PVM = JOB_PLAYTIME_TIER_0)
	role_comm_title = PAY_SHORT_PVM
	flags = EQUIPMENT_PRESET_EXTRA

	dress_under = list(/obj/item/clothing/under/marine/dress/blues/general)
	dress_over = list(/obj/item/clothing/suit/storage/jacket/marine/dress/blues/officer)
	dress_hat = list(/obj/item/clothing/head/marine/dress_cover/officer)

/datum/equipment_preset/uscm_event/provost/marshal/load_gear(mob/living/carbon/human/new_human)
	var/back_item = /obj/item/storage/backpack/satchel/sec
	if (new_human.client && new_human.client.prefs && (new_human.client.prefs.backbag == 1))
		back_item = /obj/item/storage/backpack/security

	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/highcom(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/mp/provost/marshal(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/mateba/general/impact(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/provost/coat/marshal(new_human), WEAR_JACKET)
	if(new_human.disabilities & NEARSIGHTED)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud/prescription(new_human), WEAR_EYES)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/MP/provost/marshal(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new back_item(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/taperecorder(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine/pistol/pmc_mateba(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/MP/provost/marshal(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/cotablet(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/handheld_distress_beacon/provost(new_human.back), WEAR_IN_BACK)

/datum/equipment_preset/uscm_event/provost/marshal/sector
	name = "Provost Sector Marshal (MO9)"
	minimum_age = 50

	assignment = JOB_PROVOST_SMARSHAL
	rank = "Provost Sector Marshal"
	paygrades = list(PAY_SHORT_PVSM = JOB_PLAYTIME_TIER_0)
	role_comm_title = PAY_SHORT_PVSM

/datum/equipment_preset/uscm_event/provost/marshal/chief
	name = "Provost Chief Marshal (PvCM)"
	minimum_age = 60

	assignment = JOB_PROVOST_CMARSHAL
	rank = "Provost Chief Marshal"
	paygrades = list(PAY_SHORT_PVCM = JOB_PLAYTIME_TIER_0)
	role_comm_title = PAY_SHORT_PVCM

/*****************************************************************************************************/




