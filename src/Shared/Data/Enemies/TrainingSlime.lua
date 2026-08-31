--!strict

local DefinitionTypes = require(script.Parent.Parent.DefinitionTypes)

local TrainingSlime: DefinitionTypes.EnemyDefinition = table.freeze({
	DefinitionId = "enemy.training_slime",
	DisplayName = "Training Slime",
	RarityDefinitionId = "rarity.common",
	VisualKey = "TrainingSlime",
})

return TrainingSlime
