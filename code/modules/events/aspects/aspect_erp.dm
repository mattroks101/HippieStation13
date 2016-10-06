

/datum/round_event_control/aspect/erp
	name = "All Nude"
	typepath = /datum/round_event/aspect/erp

/datum/round_event/aspect/erp
	name = "ERP"
	description = "The crew spawns naked with only their ID and PDA."

/datum/round_event/aspect/erp/start()
	
	for(var/mob/living/carbon/human/H in living_mob_list)
		//qdel(H.belt)
		qdel(H.back)
		qdel(H.ears)
		qdel(H.gloves)
		qdel(H.head)
		qdel(H.shoes)
		//qdel(H.wear_id)
		qdel(H.wear_suit)
		qdel(H.w_uniform)
