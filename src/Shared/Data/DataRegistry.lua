--!strict

-- DataRegistry — centralized read-only access to all static definitions.
-- Shared-safe: accessible from both server and client.
-- Raises an error for unknown DefinitionIds (deterministic failure).
-- Never holds mutable runtime state.

local HeroDefinitions = require(script.Parent.Hero.HeroDefinitions)
local EnemyDefinitions = require(script.Parent.Enemy.EnemyDefinitions)
local RarityDefinitions = require(script.Parent.Rarity.RarityDefinitions)

local DataRegistry = {}

function DataRegistry.getHero(definitionId: string)
	local definition = HeroDefinitions[definitionId]
	if definition == nil then
		error(string.format("DataRegistry.getHero: unknown DefinitionId '%s'", definitionId), 2)
	end
	return definition
end

function DataRegistry.getEnemy(definitionId: string)
	local definition = EnemyDefinitions[definitionId]
	if definition == nil then
		error(string.format("DataRegistry.getEnemy: unknown DefinitionId '%s'", definitionId), 2)
	end
	return definition
end

function DataRegistry.getRarity(definitionId: string)
	local definition = RarityDefinitions[definitionId]
	if definition == nil then
		error(string.format("DataRegistry.getRarity: unknown DefinitionId '%s'", definitionId), 2)
	end
	return definition
end

return table.freeze(DataRegistry)
