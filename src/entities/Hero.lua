local SpriteMap = require "src.entities.SpriteMap"
local Entity    = require "src.entities.Entity"

local Hero      = function(game)
    local hero = Entity(game)
    hero.hp = 32
    hero.char = "A"
    hero.x = 32
    hero.y = 32
    hero.update = function(self)
    end
    hero.keypressed = function(self, key)
        local dx, dy = 0, 0
        if key == "left" then
            dx = dx - 1
        end
        if key == "right" then
            self.x = self.x + 1
        end
        if key == "up" then
            self.y = self.y - 1
        end
        if key == "down" then
            self.y = self.y + 1
        end

        game:turn()
    end
    return hero
end

return Hero
