local Entity = require "src.entities.Entity"

local Goblin = function()
    local goblin = Entity()
    goblin.char = "G"
    goblin.color = { 1, 0, 0 }
    goblin.x = 24
    goblin.y = 28
    goblin.turn = function()
    end
    return goblin
end
return Goblin
