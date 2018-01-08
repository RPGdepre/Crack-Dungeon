nivel2={}
passnivel2={}
enemy2={}
heroina2={}
function nivel2_load()
  heroina2={
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
    exist=true,
    skin=heroina,
    loot=false,
  }
  enemy2={
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
    life=70,
    strength=7,
    skin=inimigo2,
    loot=false
   }
  passnivel2={
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
  }
  for i=0, 15 do
    nivel2[i]={}
    for j=0, 24 do
      nivel2[i][j] = love.math.random(2,4)
      if nivel2[0] then
        nivel2[0][j] = 0
      end
      if nivel2[i][0] then
      nivel2[i][0] = 0
      end
      if nivel2[i][24] then
      nivel2[i][24] = 0
      end
      if nivel2[15] then
      nivel2[15][j] = 0
      end
    end
  end
end
function nivel2_update()
  if player.x == heroina2.x and player.y == heroina2.y and love.keyboard.isDown('space') and heroina2.exist then
    player.heroina=player.heroina+1
    heroina2.exist=false
    heroina2.loot=true
  end
  if enemy2.x < 32 then
    enemy2.x = 32
  end
  if enemy2.y < 32 then
    enemy2.y = 32
  end
  if enemy2.x > 736 then
    enemy2.x = 736
  end
  if enemy2.y > 448 then
    enemy2.y = 448
  end
  if player.x == passnivel2.x and player.y == passnivel2.y and love.keyboard.isDown('space') and enemy2.life <= 0 then
    nivel=nivel+1
    parte=parte+1
  end
  if enemy2.life <= 0 then
    enemy2.skin = map
  end
  if player.x == enemy2.x and player.y == enemy2.y and enemy2.life <= 0 and love.keyboard.isDown('space') then
    enemy2.loot=true
  end
end
function nivel2_draw()
   for i=0, 15 do
     for j=0, 24 do
       if nivel2[i][j] == 0 then
         love.graphics.draw(muro, j * 32, i * 32)
       elseif nivel2[i][j] == 2 or nivel2[i][j] == 4 then
         love.graphics.draw(piso, j * 32, i * 32)
       elseif nivel2[i][j] == 3 then
         love.graphics.draw(grama, j * 32,i * 32)
       end
     end
   end
   if not enemy2.loot then
     love.graphics.draw(enemy2.skin, enemy2.x, enemy2.y)
   end
   if enemy2.loot then
     love.graphics.print('X: ' .. passnivel2.x, 668, 600, r, sx, sy, ox, oy, kx, ky)
     love.graphics.print('Y: ' .. passnivel2.y, 728, 600, r, sx, sy, ox, oy, kx, ky)
     love.graphics.print('Você encontrou o mapa para o nível 3!', 158, 555, 0, 1.35, sy, ox, oy, kx, ky)
   end
   if not heroina2.loot then
     love.graphics.draw(heroina2.skin, heroina2.x, heroina2.y)
   end
end
