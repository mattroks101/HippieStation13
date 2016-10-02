//I can't get this to work.

/datum/round_event_control/aspect/erp
	name = "All Nude"
	typepath = /datum/round_event/aspect/erp

/datum/round_event/aspect/erp
	name = "ERP"
	description = "The crew spawns naked with only their ID and PDA."

/datum/round_event/aspect/erp/start()
	
	for(var/mob/living/carbon/human/H in living_mob_list)
		
		H.equip_to_slot_or_del( new null(H),slot_w_uniform)
		H.equip_to_slot_or_del( new null(H),slot_wear_suit)
		H.equip_to_slot_or_del( new null(H),slot_back)
		H.equip_to_slot_or_del( new null(H),slot_belt)
		H.equip_to_slot_or_del( new null(H),slot_gloves)
		H.equip_to_slot_or_del( new null(H),slot_shoes)
		H.equip_to_slot_or_del( new null(H),slot_head)
		H.equip_to_slot_or_del( new null(H),slot_wear_mask)
		H.equip_to_slot_or_del( new null(H),slot_ears)
		H.equip_to_slot_or_del( new null(H),slot_glasses)
		H.equip_to_slot_or_del( new null(H),slot_wear_id)
		H.equip_to_slot_or_del( new null(H),slot_l_store)
		H.equip_to_slot_or_del( new null(H),slot_r_store)
		H.equip_to_slot_or_del( new null(H),slot_s_store)
		H.put_in_r_hand( new /obj/item/weapon/card/id/(H) )
		H.put_in_l_hand( new /obj/item/device/pda(H) )