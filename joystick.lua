local Joystick = { }

Joystick.new = function()
    local self = {}

	self.buttonsDown = { }
	
	self.lastButton = nil

	function self.isHotkeyDown()
		local value = self.buttonsDown["back"]

		if value then
			return value
		end

		return false
	end

    return self
end

local instance = Joystick.new()

-- instance.buttonsDown["back"] = false

print(instance.isHotkeyDown())