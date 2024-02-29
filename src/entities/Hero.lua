local Entity = require "src.entities.Entity"
local World  = require "src.entities.World"

local Hero   = function()
    local hero = Entity()
    hero.hp = 32
    hero.char = "A"
    hero.x = 32
    hero.y = 32
    hero.update = function(self)
    end
    hero.handleInput = function(self, key)
        local dx, dy = 0, 0
        if key == "left" then
            dx = dx - 1
        end
        if key == "right" then
            dx = dx + 1
        end
        if key == "up" then
            dy = dy - 1
        end
        if key == "down" then
            dy = dy + 1
        end
        return dx, dy
    end
    hero.keypressed = function(self, key)
        local dx, dy = self:handleInput(key)
        local tx = hero.x + dx
        local ty = hero.y + dy

        if World.map:isBlocked(tx, ty) then
            goto turn
        end
        for obj in all(World.objects) do
            if obj ~= hero and obj.x == tx and obj.y == ty then
                goto turn
            end
        end

        hero.x, hero.y = tx, ty
        :: turn ::
    end
    return hero
end

return Hero
