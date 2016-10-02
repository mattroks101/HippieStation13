/datum/round_event_control/aspect/neko
	name = "Neko Para"
	typepath = /datum/round_event/aspect/neko

/datum/round_event/aspect/neko
	name = "Neko Para"
	description = "We're all Tajaran on this blessed day."

/datum/round_event/aspect/neko/start()
	for(var/mob/living/carbon/human/H in player_list)
		H.set_species(/datum/species/cat, icon_update=1)