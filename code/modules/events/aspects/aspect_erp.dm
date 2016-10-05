//I can't get this to work.

/datum/round_event_control/aspect/erp
	name = "All Nude"
	typepath = /datum/round_event/aspect/erp

/datum/round_event/aspect/erp
	name = "ERP"
	description = "The crew spawns naked with only their ID and PDA."

/datum/round_event/aspect/erp/start()
	
	for(var/mob/living/carbon/human/H in living_mob_list)
		H.equipOutfit(/datum/outfit)
		H.put_in_r_hand( new /obj/item/weapon/card/id/(H) )
		H.put_in_l_hand( new /obj/item/device/pda(H) )
		H.regenerate_icons()