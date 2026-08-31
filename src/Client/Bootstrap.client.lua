--!strict

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = ReplicatedStorage:WaitForChild("Shared")
local Bootstrap = require(Shared:WaitForChild("Bootstrap"))

print(string.format("%s client bootstrap started", Bootstrap.getProjectName()))
