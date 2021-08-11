local tipsMessages = GlobalEvent("Tips")

local messages = {
  "Voce pode fazer seu donate em http://ilaria.servegame.com/?points e receber tibia coins por sua retribuicao em manter o servidor. Cada 1 centavo, 1 tibia coin.",
  "Voce pode recuperar stamina nos trainers de Thais, recupera mais rapido que ficar offline e tambem treina melhor que o offline trainning."
}

local currentMessage = 1

function tipsMessages.onTime(interval)
  Game.broadcastMessage(messages[currentMessage], MESSAGE_GAME_HIGHLIGHT)

  currentMessage = currentMessage + 1

  if currentMessage > #messages then
    currentMessage = 1
  end

  return true
end

tipsMessages:interval(15 * 60 * 1000)
tipsMessages:register()
