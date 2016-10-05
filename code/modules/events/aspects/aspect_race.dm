/datum/round_event_control/aspect/rand_races
	name = "Random Species"
	typepath = /datum/round_event/aspect/rand_races

/datum/round_event/aspect/rand_races
	name = "Humans Need Not Apply"
	description = "Everyone is a random species."

/datum/round_event/aspect/rand_races/start()
	var/species 

	for(var/mob/living/carbon/human/H in player_list)
		species = pick(/datum/species/lizard, /datum/species/moth, /datum/species/bird, /datum/species/bot, /datum/species/skeleton/playable)
		H.set_species(species, icon_update=1)