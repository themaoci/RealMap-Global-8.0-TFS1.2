function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.FountainOfLife) == 1 then
		return false
	end

	player:addHealth(player:getMaxHealth())
	player:addMana(player:getMaxMana())
	player:setStorageValue(Storage.FountainOfLife, 1)
	player:say('You feel very refreshed and relaxed.', TALKTYPE_MONSTER_SAY)
	return true
end
