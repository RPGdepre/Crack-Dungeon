player={}
function player_load(arg)
  player={
    skin=personagem,
    x=love.math.random(1, 23)*32,
    y=love.math.random(1, 14)*32,
    life=100,
    strength=10,
    live=true,
    heroina=0,
    tomaco=0
  }
end
function player_update()
  if player.x < 32 then
    player.x = 32
  end
  if player.y < 32 then
    player.y = 32
  end
  if player.x > 736 then
    player.x = 736
  end
  if player.y > 448 then
    player.y = 448
  end
  if player.life > 100 then
    player.life = 100
  end
  if player.life <= 0 then
    player.live=false
  end
end
function player_draw()
  love.graphics.draw(player.skin, player.x, player.y)
  love.graphics.print('X :' .. player.x, 540, 538, r, sx, sy, ox, oy, kx, ky)
  love.graphics.print('Y: ' .. player.y, 600, 538, r, sx, sy, ox, oy, kx, ky)
  love.graphics.print(player.life, 155, 600, 0, 2.4, sy, ox, oy, kx, ky)
  love.graphics.print("Nível  " .. nivel, 256, 512, 0, 2.4)
  love.graphics.print('Heroinas: ' .. player.heroina, 325, 600, 0, 2.4, sy, ox, oy, kx, ky)
end
