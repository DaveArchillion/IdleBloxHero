--!strict

local DefinitionTypes = require(script.Parent.Parent.DefinitionTypes)

local TrainingKnight: DefinitionTypes.HeroDefinition = table.freeze({
	DefinitionId = "hero.training_knight",
	DisplayName = "Training Knight",
	RarityDefinitionId = "rarity.common",
	Role = "Vanguard",
	VisualKey = "TrainingKnight",
})

return TrainingKnight
