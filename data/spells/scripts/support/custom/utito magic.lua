local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_SUBID, 5000)
condition:setParameter(CONDITION_PARAM_TICKS, 60 * 1000)
condition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTSPERCENT, 200)
-- condition:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)
combat:addCondition(condition)

function onCastSpell(creature, var)
	if creature:getCondition(CONDITION_ATTRIBUTES, CONDITIONID_COMBAT, 5000) then
		creature:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_COMBAT, 500)
	end
	return combat:execute(creature, var)
end
