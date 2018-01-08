require "Cod/Game/nivel1"
require "Cod/Game/nivel2"
require "Cod/Game/nivel3"
require "Cod/Game/personagem"
require "Cod/Game/moviment_and_combat"
require "Cod/Game/images"
require "Cod/Game/reset"
require "Cod/Game/historia"
function game_load()
  images_load()
  player_load()
  nivel1_load()
  nivel2_load()
  nivel3_load()
end
function game_update()
  historia_update()
  if parte == 4 then
    nivel=1
    player_update()
    nivel1_update()
    moviment_and_combat_update1()
  elseif parte == 13 then
    nivel=2
    player_update()
    nivel2_update()
    moviment_and_combat_update2()
  elseif parte == 21 then
    nivel=3
    player_update()
    nivel3_update()
    moviment_and_combat_update3()
  end
  if reset then
    reset_update()
  end
  if not player.live or parte == 25 then
    status='endbad'
  end
  if parte == 3 then
    function love.keypressed(key)
      if key == '1' then
        status = 'endfuga'
      elseif key == '2' then
        parte = parte+1
      end
    end
  end
  if parte == 12 then
    function love.keypressed(key)
      if key == '1' then
        status = 'endfuga'
      elseif key == '2' then
        parte = parte+1
      end
    end
  end
  if parte ==22 then
    function love.keypressed(key)
      if key == '1' then
        status = 'endhappy'
      elseif key == '2' then
        parte = parte+1
      end
    end
  end
end
function game_draw()
  if parte <= 3 then
    historia1_draw()
  elseif parte == 4 then
    images_draw()
    nivel1_draw()
    player_draw()
  elseif parte <= 12 then
    historia2_draw()
  elseif parte == 13 then
    images_draw()
    nivel2_draw()
    player_draw()
  elseif parte <= 20 then
    historia3_draw()
  elseif parte == 21 then
    images_draw()
    nivel3_draw()
    player_draw()
  elseif parte <= 22 then
    historia4_draw()
  end
end
