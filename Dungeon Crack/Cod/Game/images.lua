function images_load()
  piso=love.graphics.newImage('Cod/Game/Skins/piso.png')
  grama=love.graphics.newImage('Cod/Game/Skins/grama.png')
  muro=love.graphics.newImage('Cod/Game/Skins/muro.png')
  pergaminho=love.graphics.newImage('Cod/Game/Skins/pergaminho.png')
  pers1=love.graphics.newImage('Cod/Game/Skins/100.png')
  pers2=love.graphics.newImage('Cod/Game/Skins/75.png')
  pers3=love.graphics.newImage('Cod/Game/Skins/50.png')
  pers4=love.graphics.newImage('Cod/Game/Skins/25.png')
  personagem=love.graphics.newImage('Cod/Game/Skins/player.png')
  inimigo1=love.graphics.newImage('Cod/Game/Skins/enemy.png')
  inimigo2=love.graphics.newImage('Cod/Game/Skins/enemy2.png')
  heroina=love.graphics.newImage('Cod/Game/Skins/heroina.png')
  map=love.graphics.newImage('Cod/Game/Skins/map.png')
  leao=love.graphics.newImage('Cod/Game/Skins/leao.png')
end
function images_draw()
  love.graphics.draw(pergaminho, 512, 512)
  if player.life > 75 then
    love.graphics.draw(pers1, 0, 512, r, sx, sy, ox, oy, kx, ky)
  elseif player.life > 50 then
    love.graphics.draw(pers2, 0, 512, r, sx, sy, ox, oy, kx, ky)
  elseif player.life > 25 then
    love.graphics.draw(pers3, 0, 512, r, sx, sy, ox, oy, kx, ky)
  elseif player.life > 0 then
    love.graphics.draw(pers4, 0, 512, r, sx, sy, ox, oy, kx, ky)
  end
end
