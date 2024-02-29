--
--  Game
--

local Gamestate = require("libs.hump.gamestate")
local Timer     = require("libs.hump.timer")
local Vector    = require("libs.hump.vector")
local Hero      = require("src.entities.Hero")
local Goblin    = require("src.entities.Goblin")
local Tween     = Timer.tween
local Map       = require("src.entities.Map")
local Win       = require("src.states.Win")
local SpriteMap = require("src.entities.SpriteMap")

local Game      = Gamestate.new()

function Game:enter()
	Game.objects = {}
	Game.map = Map()
	Game.w = 32
	Game.h = 32

	SpriteMap.clear()

	local hero = Hero(Game)
	add(Game.objects, hero)

	local goblin = Goblin(Game)
	add(Game.objects, goblin)

	Game:drawToSpriteMap()
end

function Game:update(dt)
	Timer.update(dt)
	for obj in all(Game.objects) do
		obj:update()
	end
end

function Game:draw()
	love.graphics.clear(245 / 255, 245 / 255, 245 / 255, 1)
	SpriteMap.draw()
	love.graphics.print(love.timer.getFPS(), 0, 0)
end

function Game:drawToSpriteMap()
	SpriteMap.clear()
	for obj in all(Game.objects) do
		obj:draw()
	end
end

function Game:turn()
	for obj in all(Game.objects) do
		obj:turn()
	end
	Game:drawToSpriteMap()
end

function Game:mousepressed(x, y, button)
	Gamestate.switch(Win)
end

function Game:keypressed(key)
	for obj in all(Game.objects) do
		obj:keypressed(key)
	end
end

return Game
