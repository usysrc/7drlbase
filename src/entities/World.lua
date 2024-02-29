local Map = require "src.entities.Map"

local World = function()
    local world = {}
    world.objects = {}
    world.map = Map()
    world.name = "1234"
    world.reset = function()
        world.objects = {}
        world.map = Map()
        world.name = "1234"
    end
    return world
end


return World()
