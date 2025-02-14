/// Keep away and launch skulls at every opportunity, prioritising injured allies
/datum/ai_controller/basic_controller/legion
	blackboard = list(
		BB_TARGETTING_DATUM = new /datum/targetting_datum/basic/attack_until_dead/legion,
		BB_AGGRO_RANGE = 5, // Unobservant
		BB_BASIC_MOB_FLEE_DISTANCE = 6,
	)

	ai_movement = /datum/ai_movement/basic_avoidance
	idle_behavior = /datum/idle_behavior/idle_random_walk
	planning_subtrees = list(
		/datum/ai_planning_subtree/random_speech/legion,
		/datum/ai_planning_subtree/simple_find_target,
		/datum/ai_planning_subtree/targeted_mob_ability,
		/datum/ai_planning_subtree/flee_target/legion,
	)

/// Chase and attack whatever we are targetting, if it's friendly we will heal them
/datum/ai_controller/basic_controller/legion_brood
	blackboard = list(
		BB_TARGETTING_DATUM = new /datum/targetting_datum/basic/attack_until_dead/legion,
	)

	ai_movement = /datum/ai_movement/basic_avoidance
	idle_behavior = /datum/idle_behavior/idle_random_walk
	planning_subtrees = list(
		/datum/ai_planning_subtree/simple_find_target,
		/datum/ai_planning_subtree/basic_melee_attack_subtree,
	)

/// Target nearby friendlies if they are hurt (and are not themselves Legions)
/datum/targetting_datum/basic/attack_until_dead/legion

/datum/targetting_datum/basic/attack_until_dead/legion/faction_check(mob/living/living_mob, mob/living/the_target)
	if (!living_mob.faction_check_mob(the_target, exact_match = check_factions_exactly))
		return FALSE
	if (istype(the_target, living_mob.type))
		return TRUE
	var/atom/created_by = living_mob.ai_controller.blackboard[BB_LEGION_BROOD_CREATOR]
	if (!QDELETED(created_by) && istype(the_target, created_by.type))
		return TRUE
	return the_target.stat == DEAD || the_target.health >= the_target.maxHealth

/// Don't run away from friendlies
/datum/ai_planning_subtree/flee_target/legion

/datum/ai_planning_subtree/flee_target/legion/SelectBehaviors(datum/ai_controller/controller, seconds_per_tick)
	var/mob/living/target = controller.blackboard[target_key]
	if (QDELETED(target) || target.faction_check_mob(controller.pawn))
		return // Only flee if we have a hostile target
	return ..()

/// Make spooky sounds, if we have a corpse inside then impersonate them
/datum/ai_planning_subtree/random_speech/legion
	speech_chance = 1
	speak = list("Come...", "Legion...", "Why...?")
	emote_hear = list("groans.", "wails.", "whimpers.")
	emote_see = list("twitches.", "shudders.")
	/// Stuff to specifically say into a radio
	var/list/radio_speech = list("Come...", "Why...?")

/datum/ai_planning_subtree/random_speech/legion/speak(datum/ai_controller/controller)
	var/mob/living/carbon/human/victim = controller.blackboard[BB_LEGION_CORPSE]
	if (QDELETED(victim) || prob(30))
		return ..()

	var/list/remembered_speech = controller.blackboard[BB_LEGION_RECENT_LINES] || list()

	if (length(remembered_speech) && prob(50)) // Don't spam the radio
		controller.queue_behavior(/datum/ai_behavior/perform_speech, pick(remembered_speech))
		return

	var/obj/item/radio/mob_radio = locate() in victim.contents
	if (QDELETED(mob_radio))
		return ..() // No radio, just talk funny
	controller.queue_behavior(/datum/ai_behavior/perform_speech_radio, pick(radio_speech + remembered_speech), mob_radio, list(RADIO_CHANNEL_SUPPLY, RADIO_CHANNEL_COMMON))
