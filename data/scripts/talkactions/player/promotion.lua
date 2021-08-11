local promotion = TalkAction("!promotion")

function promotion.onSay(player, words, param)
  if player:isPremium() then
    local promotion = player:getVocation():getPromotion()

    if player:getStorageValue(STORAGEVALUE_PROMOTION) == 1 then
      player:sendCancelMessage("You are already promoted!")
    elseif player:getLevel() < 20 then
      player:sendCancelMessage("I am sorry, but I can only promote you once you have reached level " .. 20 .. ".")
    elseif not player:removeMoneyNpc(20000) then
      player:sendCancelMessage("You do not have enough money!")
    else
      player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Congratulations! You are now promoted.')
      player:setVocation(promotion)
      player:setStorageValue(STORAGEVALUE_PROMOTION, 1)
    end
  else
    player:sendCancelMessage("You need a premium account in order to get promoted.")
  end
end

promotion:register()
