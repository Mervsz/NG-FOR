local M = {}

local sprite = {}


function M.on_input(action_id, action, data)
	size = go.get(data.url, "size")
	Xsize = size.x
	Ysize = size.y

	pos = go.get_position(data.url)
	if action.x >= pos.x - size.x / 2 and action.x <= pos.x + size.x / 2 and action.y >= pos.y - size.y / 2 and action.y <= pos.y + size.y / 2 then
		return data.id
	else
		return 0
	end
end

return M