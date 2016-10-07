/datum/round_event_control/aspect/gifted
	name = "Make Science Stupid"
	typepath = /datum/round_event/aspect/gifted

/datum/round_event/aspect/gifted
	name = "Gifted and Talented"
	description = "The entire science department is incredibly gifted today."

/datum/round_event/aspect/gifted/start()
	for(var/mob/living/carbon/human/H in living_mob_list)//Look through the list.
		if(!istype(H))//Sanity check.
			return

		//OH GOOD LORD WHY!
		if(H.mind.assigned_role == "Scientist" || H.mind.assigned_role == "Roboticist" || H.mind.assigned_role == "Research Director")
			H.adjustBrainLoss(60)