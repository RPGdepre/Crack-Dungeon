function menu_load()
  mainmenu=love.graphics.newImage('Cod/Game/Skins/menu.png')
end
function menu_update()
  reset=true
  parte=0
  function love.keypressed(key)
    if key == '1' then
      status = 'game'
      reset=false
    elseif key == '2' then
      status = 'tutorial'
    elseif key == '3' then
      love.window.close()
    end
  end
end
function menu_draw()
  love.graphics.draw(mainmenu, x, y, r, sx, sy, ox, oy, kx, ky)
end
