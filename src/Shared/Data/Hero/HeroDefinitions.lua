--!strict

-- HeroDefinitions — static hero configuration.
-- DefinitionId is the string key. Contains no runtime state.

export type HeroDefinition = {
	definitionId: string,
	displayName: string,
	rarityId: string,
	baseHealth: number,
	baseAttack: number,
}

local definitions = {
	["hero_iron_knight"] = {
		definitionId = "hero_iron_knight",
		displayName = "Iron Knight",
		rarityId = "rarity_common",
		baseHealth = 100,
		baseAttack = 10,
	},
}

return table.freeze({
	["hero_iron_knight"] = table.freeze(definitions["hero_iron_knight"]),
})
