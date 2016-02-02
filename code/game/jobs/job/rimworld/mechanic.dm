/datum/job/borderworld/mechanic
	title = "Mechanic"
	job_category = IS_INDUSTRY
	flag = ENGINEER
	total_positions = 3
	spawn_positions = 3
	alt_titles = list("Engineer", "Builder")
	selection_color = "#ffeeff"
	department_flag = INDUSTRY

/datum/job/borderworld/mechanic/equip(var/mob/living/carbon/human/H, skip_suit = 0, skip_hat = 0, skip_shoes = 0)
	return ..()

/datum/job/borderworld/mechanic/equip_survival(var/mob/living/carbon/human/H)
	return ..()