function end_load()
  die=love.graphics.newImage('Cod/Game/Skins/die.png')
  Winner=love.graphics.newImage('Cod/Game/Skins/winner.png')
  fuga=love.graphics.newImage('Cod/Game/Skins/fuga.png')
end
function end_update()
  function love.keypressed(key)
    if key == '1' then
      status = 'main'
    elseif key == '2' then
      love.window.close()
    end
  end
end
function end_draw()
  if status == 'endbad' then
    love.graphics.draw(die, x, y, r, sx, sy, ox, oy, kx, ky)
  end
  if status == 'endfuga' then
    love.graphics.draw(fuga, x, y, r, sx, sy, ox, oy, kx, ky)
  end
  if status == 'endhappy' then
    love.graphics.draw(Winner, x, y, r, sx, sy, ox, oy, kx, ky)
  end
end
