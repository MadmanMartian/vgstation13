/datum/component/damage_handler
	var/health
	var/max_health
	var/dead = FALSE
	var/func_die
	var/func_damage
	var/func_revive

/datum/component/damage_handler/New(var/datum/component_container/CC, health, max_health, func_die, func_damage, func_revive)
	..()
	src.health = health
	src.max_health = health
	src.func_die = func_die
	src.func_damage = func_damage
	src.func_revive = func_revive

/datum/component/damage_handler/RecieveSignal(var/message_type, var/list/args)
	if(message_type == COMSIG_ATTACKEDBY)
		var/damage = args["damage"]
		if(damage != 0)
			if(func_damage && damage > 0)
				call(container.holder, func_damage)()
			health=clamp(health-args["damage"], 0, max_health)
			evaluate_health()

/datum/component/damage_handler/proc/evaluate_health()
	if(!dead)
		if(func_die && health <= 0)
			call(container.holder, func_die)()
			dead = TRUE
	else
		if(func_revive && health > 0)
			call(container.holder, func_revive)()
			dead = FALSE