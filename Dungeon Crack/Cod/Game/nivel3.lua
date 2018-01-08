nivel3={}
passnivel3={}
enemy3={}
heroina3={}
function nivel3_load()
  heroina3={
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
    exist=true,
    skin=heroina,
    loot=false
  }
  enemy3={
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
    life=50,
    strength=6,
    skin=leao,
    loot=false
   }
  passnivel3={
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
  }
  for i=0, 15 do
    nivel3[i]={}
    for j=0, 24 do
      nivel3[i][j] = love.math.random(2,4)
      if nivel3[0] then
        nivel3[0][j] = 0
      end
      if nivel3[i][0] then
      nivel3[i][0] = 0
      end
      if nivel3[i][24] then
      nivel3[i][24] = 0
      end
      if nivel3[15] then
      nivel3[15][j] = 0
      end
    end
  end
end
function nivel3_update()
  if player.x == heroina3.x and player.y == heroina3.y and love.keyboard.isDown('space') and heroina3.exist then
    player.heroina=player.heroina+1
    heroina3.exist=false
    heroina3.loot=true
  end
  if enemy3.x < 32 then
    enemy3.x = 32
  end
  if enemy3.y < 32 then
    enemy3.y = 32
  end
  if enemy3.x > 736 then
    enemy3.x = 736
  end
  if enemy3.y > 448 then
    enemy3.y = 448
  end
  if player.x == passnivel3.x and player.y == passnivel3.y and love.keyboard.isDown('space') and enemy3.life <= 0 then
    nivel = nivel+1
    parte = parte+1
  end
  if enemy3.life <= 0 then
    enemy3.skin = map
  end
  if player.x == enemy3.x and player.y == enemy3.y and enemy3.life <= 0 and love.keyboard.isDown('space') then
    enemy3.loot=true
  end
end
function nivel3_draw()
   for i=0, 15 do
     for j=0, 24 do
       if nivel3[i][j] == 0 then
         love.graphics.draw(muro, j * 32, i * 32)
       elseif nivel3[i][j] == 2 or nivel3[i][j] == 4 then
         love.graphics.draw(piso, j * 32, i * 32)
       elseif nivel3[i][j] == 3 then
         love.graphics.draw(grama, j * 32,i * 32)
       end
     end
   end
   if not enemy3.loot then
     love.graphics.draw(enemy3.skin, enemy3.x, enemy3.y)
   end
   if enemy3.loot then
     love.graphics.print('X: ' .. passnivel3.x, 668, 600, r, sx, sy, ox, oy, kx, ky)
     love.graphics.print('Y: ' .. passnivel3.y, 728, 600, r, sx, sy, ox, oy, kx, ky)
     love.graphics.print('Você encontrou o mapa da estátua de Crack', 129, 555, 0, 1.35, sy, ox, oy, kx, ky)
   end
   if not heroina3.loot then
     love.graphics.draw(heroina3.skin, heroina3.x, heroina3.y)
   end
end
