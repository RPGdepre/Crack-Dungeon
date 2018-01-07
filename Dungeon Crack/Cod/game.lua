require "Cod/Game/nivel1"
require "Cod/Game/nivel2"
require "Cod/Game/nivel3"
require "Cod/Game/personagem"
require "Cod/Game/moviment_and_combat"
require "Cod/Game/images"
require "Cod/Game/reset"
nivel=1
reset=false
function game_load()
  images_load()
  player_load()
  nivel1_load()
  nivel2_load()
  nivel3_load()
end
function game_update()
  if nivel == 1 then
    nivel1_update()
    moviment_and_combat_update1()
  elseif nivel == 2 then
    nivel2_update()
    moviment_and_combat_update2()
  elseif nivel == 3 then
    nivel3_update()
    moviment_and_combat_update3()
  end
  if reset then
    reset_update()
  end
  player_update()
  if not player.live then
    status='endbad'
    reset=true
  end
  if nivel > 3 then
    status='endhappy'
    reset=true
  end
end
function game_draw()
  images_draw()
    if nivel == 1 then
      nivel1_draw()
    elseif nivel == 2 then
      nivel2_draw()
    elseif nivel == 3 then
      nivel3_draw()
    end
  player_draw()
end
