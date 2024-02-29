local SpriteMap = require "src.entities.SpriteMap"

local Entity = function(game)
    assert(game, "need to provide game for entity")
    local entity = {}

    entity.x = 0
    entity.y = 0
    entity.char = "A"

    entity.draw = function(self)
        SpriteMap.set(self.char, self.x, self.y)
    end

    entity.update = function() end

    entity.turn = function() end

    entity.keypressed = function() end

    return entity
end

return Entity
