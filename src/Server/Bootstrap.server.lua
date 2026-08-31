--!strict

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = ReplicatedStorage:WaitForChild("Shared")
local Bootstrap = require(Shared:WaitForChild("Bootstrap"))

print(string.format("%s server bootstrap started", Bootstrap.getProjectName()))
