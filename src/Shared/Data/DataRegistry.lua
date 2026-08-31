--!strict

local DefinitionTypes = require(script.Parent.DefinitionTypes)
local TrainingKnight = require(script.Parent.Heroes.TrainingKnight)
local TrainingSlime = require(script.Parent.Enemies.TrainingSlime)
local Common = require(script.Parent.Rarities.Common)

local definitionsById: { [string]: DefinitionTypes.Definition } = table.freeze({
	[TrainingKnight.DefinitionId] = TrainingKnight,
	[TrainingSlime.DefinitionId] = TrainingSlime,
	[Common.DefinitionId] = Common,
})

local DataRegistry = {}

-- Returns nil when no registered static definition has the supplied DefinitionId.
function DataRegistry.getDefinition(definitionId: string): DefinitionTypes.Definition?
	return definitionsById[definitionId]
end

return table.freeze(DataRegistry)
