//OH GOD WHY!

/datum/round_event_control/aspect/neko
	name = "Neko Para"
	typepath = /datum/round_event/aspect/neko

/datum/round_event/aspect/neko
	name = "Neko Para"
	description = "We're all Tajaran on this blessed day."

/datum/round_event/aspect/neko/start()
	for(var/mob/living/carbon/human/H in player_list)//Look through the list.
		H.set_species(/datum/species/cat, icon_update=1)//Now you're a cat.