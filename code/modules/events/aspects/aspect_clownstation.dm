//Can't quite get this to work.

/datum/round_event_control/aspect/clownstation
	name = "All Heads Clowns"
	typepath = /datum/round_event/aspect/clownstation

/datum/round_event/aspect/clownstation
	name = "ClownStation"
	description = "All Heads are clowns."

/datum/round_event/aspect/clownstation/start()
	for(var/mob/living/carbon/human/H in mob_list)
		if(H.stat!=2 && H.mind && (H.mind.assigned_role in command_positions))
				
			H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/clown(H),slot_w_uniform)
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/clown_hat(H),slot_wear_suit)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/clown(H),slot_back)
			//H.equip_to_slot_or_del(new belt(H),slot_belt)
			//H.equip_to_slot_or_del(new gloves(H),slot_gloves)
			H.equip_to_slot_or_del(new /obj/item/clothing/shoes/clown_shoes(H),slot_shoes)
			//H.equip_to_slot_or_del(new head(H),slot_head)
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/clown_hat(H),slot_wear_mask)
			//H.equip_to_slot_or_del(new ears(H),slot_ears)
			//H.equip_to_slot_or_del(new glasses(H),slot_glasses)
			//H.equip_to_slot_or_del(new id(H),slot_wear_id)
			//H.equip_to_slot_or_del(new l_pocket(H),slot_l_store)
			//H.equip_to_slot_or_del(new r_pocket(H),slot_r_store)
			//H.equip_to_slot_or_del(new suit_store(H),slot_s_store)
			H.fully_replace_character_name(H.real_name, pick(clown_names))
			H.dna.add_mutation(CLOWNMUT)