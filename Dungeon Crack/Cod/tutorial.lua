function tutorial_load()
  tutorial=love.graphics.newImage('Cod/Game/Skins/tutorial.png')
end
function tutorial_update()
  function love.keypressed(key)
    if key == '1' then
      status='main'
    end
  end
end
function tutorial_draw()
  love.graphics.draw(tutorial, x, y, r, sx, sy, ox, oy, kx, ky)
end
