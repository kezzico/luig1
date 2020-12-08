local lastbutton = "none"
local hotkeydown = false
local music = nil

function love.gamepadpressed(joystick, button)
  if button == 'back' then
	  hotkeydown = true
	end

	if hotkeydown == true then
		if button == 'start' then
			love.event.quit()
		end

	else
	-- not hotkey events
  	if button == 'leftshoulder' then
p = music.getPitch()

music.setPitch(p - 0.1)
	
		end

		if button == 'rightshoulder' then
p = music.getPitch()

music.setPitch(p + 0.1)
		end
	end

	lastbutton = button
end

function love.gamepadreleased(joystick, button)
	if button == 'back' then
		hotkeydown = false
	end
end

function love.joysyickadded(joystick)
-- todo: split controller flags ie hotkeydown
-- into joystick specific objects
end

function love.draw()
	love.graphics.print("Last gamepad button pressed: "..lastbutton, 10, 10)
end

function love.load()
	music = love.audio.newSource('sounds/overworld.ogg')

end