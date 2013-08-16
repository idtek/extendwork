require("MacroDefines")
local GridPos = {}

GridPos.x = 0
GridPos.y = 0

function GridPos:Center()
	local pos = {x = self.x + 0.5,y = self.y + 0.5}
	return pos
end

function GridPos:Move(dir)
	if dir == Direction.NORTH then
		self.y = self.y - 1
	elseif dir == Direction.SOUTH then
		self.y = self.y + 1
	elseif dir == Direction.EAST then
		self.x = self.x + 1
	elseif dir == Direction.WEST then
		self.x = self.x - 1
	else
		--nothing
	end
end

return GridPos