local Entity = require "src.entities.Entity"

local Goblin = function()
    local goblin = Entity()
    goblin.char = "G"
    goblin.x = 24
    goblin.y = 28
    goblin.turn = function()
    end
    return goblin
end
return Goblin
