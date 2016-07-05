/datum/job

	//The name of the job
	var/title = "NOPE"               // Fluffy ingame name and general identifier.
	var/list/alt_titles              // List of alternate titles, if any

	var/supervisors = null           // Supervisors, who this person answers to directly
	var/selection_color = "#ffffff"  // Selection screen color
	var/req_admin_notify             // If this is set to 1, a text is printed to the player when jobs are assigned, telling him that he should let admins know that he has to disconnect.

	var/account_allowed = 1          // Does this job type come with a station account?
	var/economic_modifier = 2        // With how much does this job modify the initial account amount?

	// Spawn count bounds.
	var/total_positions = 0          // How many players can be this job
	var/spawn_positions = 0          // How many players can spawn in as this job
	var/current_positions = 0        // How many players have this job

	// Playtime and character age bounds.
	var/minimal_player_age = 0       // If you have use_age_restriction_for_jobs config option enabled and the database set up, this option will add a requirement for players to be at least minimal_player_age days old. (meaning they first signed in at least that many days before.)
	var/minimum_character_age = 17   // If character age is below this, the job is unavailable.
	var/ideal_character_age = 30     // Random job assignment will prefer ages closer to this bound when choosing from multiple candidates.

	// Access vars!
	var/list/minimal_access = list() // Useful for servers which prefer to only have access given to the places a job absolutely needs (Larger server population)
	var/list/access = list()         // Useful for servers which either have fewer players, so each person needs to fill more than one role, or servers which like to give more access, so players can't hide forever in their super secure departments (I'm looking at you, chemistry!)

	// Various equipment paths.
	var/idtype                       // The type of the ID the player will have
	var/headsettype                  // Type of headset if any.

	var/job_category = IS_CIVIL

/datum/job/proc/equip(var/mob/living/human/H, var/skip_suit = 0, var/skip_hat = 0, var/skip_shoes = 0, var/alt_rank)

	var/list/uniforms = list(
		/obj/item/clothing/under/soviet,
		/obj/item/clothing/under/redcoat,
		/obj/item/clothing/under/serviceoveralls,
		/obj/item/clothing/under/captain_fly,
		/obj/item/clothing/under/det,
		/obj/item/clothing/under/brown,
		)
	var/new_uniform = pick(uniforms)
	H.equip_to_slot_or_del(new new_uniform(H),slot_w_uniform)

	if(!skip_shoes)
		var/list/shoes = list(
			/obj/item/clothing/shoes/jackboots,
			/obj/item/clothing/shoes/workboots,
			/obj/item/clothing/shoes/brown,
			/obj/item/clothing/shoes/laceup
			)

		var/new_shoes = pick(shoes)
		H.equip_to_slot_or_del(new new_shoes(H),slot_shoes)
		if(!H.shoes)
			var/fallback_type = pick(/obj/item/clothing/shoes/sandal)
			H.equip_to_slot_or_del(new fallback_type(H), slot_shoes)

	if(!skip_hat && prob(60))
		var/list/hats = list(
			/obj/item/clothing/head/ushanka,
			/obj/item/clothing/head/bandana,
			/obj/item/clothing/head/cowboy_hat,
			/obj/item/clothing/head/cowboy_hat/wide,
			/obj/item/clothing/head/cowboy_hat/black
			)
		var/new_hat = pick(hats)
		H.equip_to_slot_or_del(new new_hat(H),slot_head)

	if(!skip_suit && prob(40))
		var/list/suits = list(
			/obj/item/clothing/suit/storage/toggle/bomber,
			/obj/item/clothing/suit/storage/leather_jacket,
			/obj/item/clothing/suit/storage/toggle/brown_jacket,
			/obj/item/clothing/suit/storage/toggle/hoodie,
			/obj/item/clothing/suit/storage/toggle/hoodie/black,
			/obj/item/clothing/suit/poncho
			)
		var/new_suit = pick(suits)
		H.equip_to_slot_or_del(new new_suit(H),slot_wear_suit)

	return 1

/datum/job/proc/equip_backpack(var/mob/living/human/H)
	switch(H.backbag)
		if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
		if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel_norm(H), slot_back)
		if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)

/datum/job/proc/equip_survival(var/mob/living/human/H)
	if(!H)	return 0
	H.species.equip_survival_gear(H,0)
	return 1

// overrideable separately so AIs/borgs can have cardborg hats without unneccessary new()/del()
/datum/job/proc/equip_preview(mob/living/human/H)
	return equip(H)

/datum/job/proc/get_access()
	if(!config || config.jobs_have_minimal_access)
		return src.minimal_access.Copy()
	else
		return src.access.Copy()

//If the configuration option is set to require players to be logged as old enough to play certain jobs, then this proc checks that they are, otherwise it just returns 1
/datum/job/proc/player_old_enough(client/C)
	return (available_in_days(C) == 0) //Available in 0 days = available right now = player is old enough to play.

/datum/job/proc/available_in_days(client/C)
	if(C && config.use_age_restriction_for_jobs && isnum(C.player_age) && isnum(minimal_player_age))
		return max(0, minimal_player_age - C.player_age)
	return 0

/datum/job/proc/apply_fingerprints(var/mob/living/human/target)
	if(!istype(target))
		return 0
	for(var/obj/item/item in target.contents)
		apply_fingerprints_to_item(target, item)
	return 1

/datum/job/proc/apply_fingerprints_to_item(var/mob/living/human/holder, var/obj/item/item)
	item.add_fingerprint(holder,1)
	if(item.contents.len)
		for(var/obj/item/sub_item in item.contents)
			apply_fingerprints_to_item(holder, sub_item)

/datum/job/proc/is_position_available()
	return (current_positions < total_positions) || (total_positions == -1)
