function reset_update()
  nivel=1
  player.skin=love.graphics.newImage('Cod/Game/Skins/player.png')
  player.life=100
  player.live=true
  player.heroina=0
  player.tomaco=0
  enemy1.life=70
  enemy1.strength=7
  enemy1.skin=love.graphics.newImage('Cod/Game/Skins/enemy.png')
  enemy1.loot=false
  heroina1.exist=true
  heroina1.loot=false
  heroina1.skin=love.graphics.newImage('Cod/Game/Skins/heroina.png')
  enemy2.life=70
  enemy2.strength=7
  enemy2.skin=love.graphics.newImage('Cod/Game/Skins/enemy2.png')
  enemy2.loot=false
  heroina2.exist=true
  heroina2.loot=false
  heroina2.skin=love.graphics.newImage('Cod/Game/Skins/heroina.png')
  enemy3.life=70
  enemy3.strength=7
  enemy3.skin=love.graphics.newImage('Cod/Game/Skins/player.png')
  enemy3.loot=false
  heroina3.exist=true
  heroina3.loot=false
  heroina3.skin=love.graphics.newImage('Cod/Game/Skins/heroina.png')
  game_load()
end
