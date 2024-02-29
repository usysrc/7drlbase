local SpriteMap = require "src.entities.SpriteMap"

local Entity = function()
    local entity = {}

    entity.x = 0
    entity.y = 0
    entity.char = "A"
    entity.color = { 0, 0, 0 }

    entity.draw = function(self)
        SpriteMap.set(self.char, self.x, self.y, self.color)
    end

    entity.update = function() end

    entity.turn = function() end

    entity.keypressed = function() end

    return entity
end

return Entity
