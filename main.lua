CreateEntity = require "entityClass"

local player1 = CreateEntity({name = "clementine"})
player1:addComponent("health")
player1.components.health:SetMaxHealth(80)

local player2 = CreateEntity({name = "zoe"})
player2:addComponent("health")
player2.components.health:SetMaxHealth(50)

player2:addComponent("inspectable")
player2.components.inspectable:SetDescription("Hello there!!")

local player3 = CreateEntity()
player3:addComponent("health")

player3:addComponent("inspectable")

print("name = " .. player1.name, "\nhitpoint = " .. player1.currenthealth, "\n_________________________________")
print("name = " .. player2.name, "\nhitpoint = " .. player2.currenthealth, "\ndescription = " .. player2.description, "\n_________________________________")
print("name = " .. player3.name, "\nhitpoint = " .. player3.currenthealth, "\ndescription = " .. player3.description, "\n_________________________________")
