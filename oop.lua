local function Object(name, pos)
	local self = {}
	self.class = "Object"
	self.name = name or "No name"
	self.pos = pos or { x = 0, y = 0 } 
	self.status = "Idle"

	self.Move = function()
		self.status = "Moving"
	end
	
	return self
end

print("ClassObject :")
local object = Object("Test", { x = 3, y = 6 })
print("Class : "..object.class)
print("Name : "..object.name)
print("Pos : "..object.pos.x..", ".. object.pos.y)
print("Status : "..object.status)
object:Move()
print("Status : "..object.status)

local function Player(name, pos, hp, mana)
	local self = Object(name, pos)
	self.class = "Player"
	self.hp = hp or 100
	self.mana = mana or 100

	self.Move = function()
		self.status = "Moving Fast"
	end
	
	self.Attack = function()
		self.status = "Attacking"
	end

	return self
end

local player = Player("Player", { x = 10, y = 10 })

print("\nClassPlayer :")
print("Class : "..player.class)
print("Name : "..player.name)
print("Pos : "..player.pos.x..", ".. player.pos.y)
print("Status : "..player.status)
player:Move()
print("Status : "..player.status)
print("Hp : "..player.hp)
print("Mana : "..player.mana)
player:Attack()
print("Status : "..player.status)