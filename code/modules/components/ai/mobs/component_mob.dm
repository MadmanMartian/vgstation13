/**
 * Component-driven mob.
 *
 * See /datum/component and /datum/component_container.
 */
/mob/living/component

/mob/living/component/New()
	..()
	CompContainer = new (src)
	InitializeComponents()
	CompContainer.register_for_updates()

/mob/living/component/proc/InitializeComponents()
	// Set up components here
	//var/datum/component/.../ref = container.AddComponent(/datum/component/...)