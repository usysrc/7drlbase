local Entity = require "src.entities.Entity"

local Goblin = function(game)
    local goblin = Entity(game)
    goblin.char = "G"
    goblin.x = 24
    goblin.y = 28
    goblin.turn = function()
        goblin.x = goblin.x + 1
    end
    return goblin
end
return Goblin
