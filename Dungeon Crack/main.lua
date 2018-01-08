require "Cod/game"
require "Cod/menu"
require "Cod/end"
require "Cod/tutorial"
status='main'
function love.load(arg)
  menu_load()
  game_load()
  end_load()
  tutorial_load()
end
function love.update(dt)
  if status == 'main' then
    menu_update()
  elseif status == 'tutorial' then
    tutorial_update()
  elseif status == 'game' then
    game_update()
  elseif status == 'endbad' or status == 'endhappy' or status == 'endfuga' then
    end_update()
  end
end
function love.draw()
  if status == 'main' then
    menu_draw()
  elseif status == 'tutorial' then
    tutorial_draw()
  elseif status == 'game' then
    game_draw()
  elseif status == 'endbad' or status == 'endhappy' or status == 'endfuga' then
    end_draw()
  end
end
