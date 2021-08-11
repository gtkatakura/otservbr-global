local vocationUpdates = CreatureEvent("VocationUpdates")

function vocationUpdates.onLogin(player)
  local vocation = player:getVocation()

  if player:getStorageValue(Storage.Vocation.CapacityGain) ~= vocation:getCapacityGain() then
    local baseLevel = 7
    local baseVocation = Vocation(VOCATION.ID.NONE)
    local level = player:getLevel() - 8
    local capacity = 40000 + (baseLevel * baseVocation:getCapacityGain()) + (level * player:getVocation():getCapacityGain())

    player:setCapacity(capacity)
    player:setStorageValue(Storage.Vocation.CapacityGain, vocation:getCapacityGain())
  end

  return true
end

vocationUpdates:register()
