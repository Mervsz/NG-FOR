-- 

local M = {}

local correct_trait = {}
local sprite_colors = {"black", "red", "blue", "brown", "gray"}

function M.show_traits(factory_url)
	id = correct_trait.id
	position = vmath.vector3(50,90,1)
	factory.create(factory_url, position, nil, {id= id, sprite_anim=hash(sprite_colors[id])})
	
end

function M.level_init(factory_url, total)
	math.randomseed(os.clock()*10000000)
	correct_trait["id"] = math.random(1,total)
	
	
	print("correct trait ", correct_trait.id)
	
	for i = 1 ,total  do
		Xpos = math.random(125, 250)
		Ypos = math.random(25,100)
		print(i, "sample")
		position = vmath.vector3(Xpos,Ypos,1)
		factory.create(factory_url, position, nil, {id= i, sprite_anim=hash(sprite_colors[i])})
	end

end

function M.validate_trait(clicked_id)
	if clicked_id == correct_trait.id then
		return true
	else
		return false
	end
end

return M