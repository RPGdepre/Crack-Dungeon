function moviment_and_combat_update1()
  function love.keypressed(key)
    if player.live then
      if key == 'w' or key == 's' or key == 'a' or key == 'd' or key == 'space' then
        if key == 'w' then
          player.y=player.y-32
        elseif key == 's' then
          player.y=player.y+32
        elseif key == 'a' then
          player.x=player.x-32
        elseif key == 'd' then
          player.x=player.x+32
        end
        if key == 'space' and enemy1.life > 0 then
          if (player.x == enemy1.x + 32 and player.y == enemy1.y)
          or (player.x == enemy1.x - 32 and player.y == enemy1.y)
          or (player.y == enemy1.y + 32 and player.x == enemy1.x)
          or (player.y == enemy1.y - 32 and player.x == enemy1.x)
          or (player.x == enemy1.x + 32 and player.y == enemy1.y + 32)
          or (player.x == enemy1.x - 32 and player.y == enemy1.y - 32)
          or (player.y == enemy1.y + 32 and player.x == enemy1.x - 32)
          or (player.y == enemy1.y - 32 and player.x == enemy1.x + 32)
          then
            enemy1.life=enemy1.life - player.strength
            player.life=player.life - enemy1.strength
          end
        end
        if enemy1.life > 0 then
          if player.y == enemy1.y + 64 and player.x == enemy1.x then
            enemy1.y = enemy1.y + 32
            player.life=player.life-enemy1.strength
          elseif player.x == enemy1.x + 64 and player.y == enemy1.y then
            enemy1.x = enemy1.x + 32
            player.life=player.life-enemy1.strength
          elseif player.y == enemy1.y - 64 and player.x == enemy1.x then
            enemy1.y = enemy1.y - 32
            player.life=player.life-enemy1.strength
          elseif player.x == enemy1.x - 64 and player.y == enemy1.y then
            enemy1.x = enemy1.x - 32
            player.life=player.life-enemy1.strength
          elseif player.y == enemy1.y + 64 and player.x == enemy1.x + 32 then
            enemy1.y = enemy1.y + 32
            enemy1.x = enemy1.x + 32
            player.life=player.life-enemy1.strength
          elseif player.y == enemy1.y - 64 and player.x == enemy1.x - 32 then
            enemy1.y = enemy1.y - 32
            enemy1.x = enemy1.x - 32
          player.life=player.life-enemy1.strength
        elseif player.y == enemy1.y + 64 and player.x == enemy1.x - 32 then
            enemy1.y = enemy1.y + 32
            enemy1.x = enemy1.x - 32
            player.life=player.life-enemy1.strength
          elseif player.y == enemy1.y - 64 and player.x == enemy1.x + 32 then
            enemy1.y = enemy1.y - 32
            enemy1.x = enemy1.x + 32
            player.life=player.life-enemy1.strength
          else
            mov=love.math.random(1,8)
            if mov == 2 then
              enemy1.y=enemy1.y-32
            elseif mov == 7 then
              enemy1.y=enemy1.y+32
            elseif mov == 4 then
            enemy1.x=enemy1.x-32
            elseif mov == 5 then
              enemy1.x=enemy1.x+32
            elseif mov == 1 then
              enemy1.y=enemy1.y-32
              enemy1.x=enemy1.x-32
            elseif mov == 3 then
              enemy1.y=enemy1.y-32
              enemy1.x=enemy1.x+32
            elseif mov == 8 then
              enemy1.x=enemy1.x+32
              enemy1.y=enemy1.y+32
            elseif mov == 6 then
              enemy1.x=enemy1.x-32
              enemy1.y=enemy1.y+32
            end
          end
        end
      end
    end
  end
end
function moviment_and_combat_update2()
  function love.keypressed(key)
    if player.live then
      if key == 'w' or key == 's' or key == 'a' or key == 'd' or key == 'space' then
        if key == 'w' then
          player.y=player.y-32
        elseif key == 's' then
          player.y=player.y+32
        elseif key == 'a' then
          player.x=player.x-32
        elseif key == 'd' then
          player.x=player.x+32
        end
        if key == 'space' and enemy2.life > 0 then
          if (player.x == enemy2.x + 32 and player.y == enemy2.y)
          or (player.x == enemy2.x - 32 and player.y == enemy2.y)
          or (player.y == enemy2.y + 32 and player.x == enemy2.x)
          or (player.y == enemy2.y - 32 and player.x == enemy2.x)
          or (player.x == enemy2.x + 32 and player.y == enemy2.y + 32)
          or (player.x == enemy2.x - 32 and player.y == enemy2.y - 32)
          or (player.y == enemy2.y + 32 and player.x == enemy2.x - 32)
          or (player.y == enemy2.y - 32 and player.x == enemy2.x + 32)
          then
            enemy2.life=enemy2.life - player.strength
            player.life=player.life - enemy2.strength
          end
        end
        if enemy2.life > 0 then
          if player.y == enemy2.y + 64 and player.x == enemy2.x then
            enemy2.y = enemy2.y + 32
            player.life=player.life-enemy2.strength
          elseif player.x == enemy2.x + 64 and player.y == enemy2.y then
            enemy2.x = enemy2.x + 32
            player.life=player.life-enemy2.strength
          elseif player.y == enemy2.y - 64 and player.x == enemy2.x then
            enemy2.y = enemy2.y - 32
            player.life=player.life-enemy2.strength
          elseif player.x == enemy2.x - 64 and player.y == enemy2.y then
            enemy2.x = enemy2.x - 32
            player.life=player.life-enemy2.strength
          elseif player.y == enemy2.y + 64 and player.x == enemy2.x + 32 then
            enemy2.y = enemy2.y + 32
            enemy2.x = enemy2.x + 32
            player.life=player.life-enemy2.strength
          elseif player.y == enemy2.y - 64 and player.x == enemy2.x - 32 then
            enemy2.y = enemy2.y - 32
            enemy2.x = enemy2.x - 32
          player.life=player.life-enemy2.strength
        elseif player.y == enemy2.y + 64 and player.x == enemy2.x - 32 then
            enemy2.y = enemy2.y + 32
            enemy2.x = enemy2.x - 32
            player.life=player.life-enemy2.strength
          elseif player.y == enemy2.y - 64 and player.x == enemy2.x + 32 then
            enemy2.y = enemy2.y - 32
            enemy2.x = enemy2.x + 32
            player.life=player.life-enemy2.strength
          else
            mov=love.math.random(1,8)
            if mov == 2 then
              enemy2.y=enemy2.y-32
            elseif mov == 7 then
              enemy2.y=enemy2.y+32
            elseif mov == 4 then
            enemy2.x=enemy2.x-32
            elseif mov == 5 then
              enemy2.x=enemy2.x+32
            elseif mov == 1 then
              enemy2.y=enemy2.y-32
              enemy2.x=enemy2.x-32
            elseif mov == 3 then
              enemy2.y=enemy2.y-32
              enemy2.x=enemy2.x+32
            elseif mov == 8 then
              enemy2.x=enemy2.x+32
              enemy2.y=enemy2.y+32
            elseif mov == 6 then
              enemy2.x=enemy2.x-32
              enemy2.y=enemy2.y+32
            end
          end
        end
      end
    end
  end
end
function moviment_and_combat_update3()
  function love.keypressed(key)
    if player.live then
      if key == 'w' or key == 's' or key == 'a' or key == 'd' or key == 'space' then
        if key == 'w' then
          player.y=player.y-32
        elseif key == 's' then
          player.y=player.y+32
        elseif key == 'a' then
          player.x=player.x-32
        elseif key == 'd' then
          player.x=player.x+32
        end
        if key == 'space' and enemy3.life > 0 then
          if (player.x == enemy3.x + 32 and player.y == enemy3.y)
          or (player.x == enemy3.x - 32 and player.y == enemy3.y)
          or (player.y == enemy3.y + 32 and player.x == enemy3.x)
          or (player.y == enemy3.y - 32 and player.x == enemy3.x)
          or (player.x == enemy3.x + 32 and player.y == enemy3.y + 32)
          or (player.x == enemy3.x - 32 and player.y == enemy3.y - 32)
          or (player.y == enemy3.y + 32 and player.x == enemy3.x - 32)
          or (player.y == enemy3.y - 32 and player.x == enemy3.x + 32)
          then
            enemy3.life=enemy3.life - player.strength
            player.life=player.life - enemy3.strength
          end
        end
        if enemy3.life > 0 then
          if player.y == enemy3.y + 64 and player.x == enemy3.x then
            enemy3.y = enemy3.y + 32
            player.life=player.life-enemy3.strength
          elseif player.x == enemy3.x + 64 and player.y == enemy3.y then
            enemy3.x = enemy3.x + 32
            player.life=player.life-enemy3.strength
          elseif player.y == enemy3.y - 64 and player.x == enemy3.x then
            enemy3.y = enemy3.y - 32
            player.life=player.life-enemy3.strength
          elseif player.x == enemy3.x - 64 and player.y == enemy3.y then
            enemy3.x = enemy3.x - 32
            player.life=player.life-enemy3.strength
          elseif player.y == enemy3.y + 64 and player.x == enemy3.x + 32 then
            enemy3.y = enemy3.y + 32
            enemy3.x = enemy3.x + 32
            player.life=player.life-enemy3.strength
          elseif player.y == enemy3.y - 64 and player.x == enemy3.x - 32 then
            enemy3.y = enemy3.y - 32
            enemy3.x = enemy3.x - 32
          player.life=player.life-enemy3.strength
        elseif player.y == enemy3.y + 64 and player.x == enemy3.x - 32 then
            enemy3.y = enemy3.y + 32
            enemy3.x = enemy3.x - 32
            player.life=player.life-enemy3.strength
          elseif player.y == enemy3.y - 64 and player.x == enemy3.x + 32 then
            enemy3.y = enemy3.y - 32
            enemy3.x = enemy3.x + 32
            player.life=player.life-enemy3.strength
          else
            mov=love.math.random(1,8)
            if mov == 2 then
              enemy3.y=enemy3.y-32
            elseif mov == 7 then
              enemy3.y=enemy3.y+32
            elseif mov == 4 then
            enemy3.x=enemy3.x-32
            elseif mov == 5 then
              enemy3.x=enemy3.x+32
            elseif mov == 1 then
              enemy3.y=enemy3.y-32
              enemy3.x=enemy3.x-32
            elseif mov == 3 then
              enemy3.y=enemy3.y-32
              enemy3.x=enemy3.x+32
            elseif mov == 8 then
              enemy3.x=enemy3.x+32
              enemy3.y=enemy3.y+32
            elseif mov == 6 then
              enemy3.x=enemy3.x-32
              enemy3.y=enemy3.y+32
            end
          end
        end
      end
    end
  end
end
