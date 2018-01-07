nivel1={}
passnivel1={}
enemy1={}
heroina1={}
function nivel1_load()
  heroina1={
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
    exist=true,
    skin=heroina,
    loot=false
  }
  enemy1={
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
    life=50,
    strength=6,
    skin=inimigo1,
    loot=false
   }
  passnivel1={
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
  }
  for i=0, 15 do
    nivel1[i]={}
    for j=0, 24 do
      nivel1[i][j] = love.math.random(2,4)
			if nivel1[0] then
				nivel1[0][j] = 0
			end
			if nivel1[i][0] then
			nivel1[i][0] = 0
			end
			if nivel1[i][24] then
			nivel1[i][24] = 0
			end
			if nivel1[15] then
			nivel1[15][j] = 0
			end
    end
  end
end
function nivel1_update()
  if player.x == heroina1.x and player.y == heroina1.y and love.keyboard.isDown('space') and heroina1.exist then
    player.heroina=player.heroina+1
    heroina1.exist=false
    heroina1.loot=true
  end
  if enemy1.x < 32 then
    enemy1.x = 32
  end
  if enemy1.y < 32 then
    enemy1.y = 32
  end
  if enemy1.x > 736 then
    enemy1.x = 736
  end
  if enemy1.y > 448 then
    enemy1.y = 448
  end
  if player.x == passnivel1.x and player.y == passnivel1.y and love.keyboard.isDown('space') then
    nivel=nivel+1
  end
  if enemy1.life <= 0 then
    enemy1.skin = map
  end
  if player.x == enemy1.x and player.y == enemy1.y and enemy1.life <= 0 and love.keyboard.isDown('space') then
    enemy1.loot=true
  end
end
function nivel1_draw()
   for i=0, 15 do
     for j=0, 24 do
       if nivel1[i][j] == 0 then
         love.graphics.draw(muro, j * 32, i * 32)
       elseif nivel1[i][j] == 2 or nivel1[i][j] == 4 then
         love.graphics.draw(piso, j * 32, i * 32)
       elseif nivel1[i][j] == 3 then
         love.graphics.draw(grama, j * 32,i * 32)
       end
     end
   end
   if not enemy1.loot then
     love.graphics.draw(enemy1.skin, enemy1.x, enemy1.y)
   end
   if enemy1.loot then
     love.graphics.print('X: ' .. passnivel1.x, 668, 600, r, sx, sy, ox, oy, kx, ky)
     love.graphics.print('Y: ' .. passnivel1.y, 728, 600, r, sx, sy, ox, oy, kx, ky)
     love.graphics.print('Você encontrou o mapa para o nível 2!', 158, 555, 0, 1.35, sy, ox, oy, kx, ky)
   end
   if not heroina1.loot then
     love.graphics.draw(heroina1.skin, heroina1.x, heroina1.y)
   end
end
