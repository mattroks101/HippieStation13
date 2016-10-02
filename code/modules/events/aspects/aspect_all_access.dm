/datum/round_event_control/aspect/bad_hop
	name = "Bad HoP"
	typepath = /datum/round_event/aspect/bad_hop

/datum/round_event/aspect/bad_hop
	name = "Bad HoP"
	description = "The Clown and Mime start with all access."

/datum/round_event/aspect/bad_hop/start()
	
	for(var/mob/living/carbon/human/H in living_mob_list)//Look through the list.
		if(!istype(H))//Sanity check.
			return

		if(H.mind.assigned_role == "Clown" || H.mind.assigned_role == "Mime")//Oh shit we got a mime and clown here!
			var/obj/item/weapon/card/id/W = H.wear_id//Get their ID.
			W.access = get_all_accesses()//And give them all access.