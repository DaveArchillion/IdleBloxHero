--!strict

-- RarityDefinitions — static rarity configuration.
-- DefinitionId is the string key. Contains no runtime state.

export type RarityDefinition = {
	definitionId: string,
	displayName: string,
	tier: number,
	colorHex: string,
}

local definitions = {
	["rarity_common"] = {
		definitionId = "rarity_common",
		displayName = "Common",
		tier = 1,
		colorHex = "#AAAAAA",
	},
}

return table.freeze({
	["rarity_common"] = table.freeze(definitions["rarity_common"]),
})
