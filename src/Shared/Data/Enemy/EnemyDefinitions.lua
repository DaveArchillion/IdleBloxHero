--!strict

-- EnemyDefinitions — static enemy configuration.
-- DefinitionId is the string key. Contains no runtime state.

export type EnemyDefinition = {
	definitionId: string,
	displayName: string,
	baseHealth: number,
	baseAttack: number,
	expReward: number,
	goldReward: number,
}

local definitions = {
	["enemy_slime"] = {
		definitionId = "enemy_slime",
		displayName = "Slime",
		baseHealth = 50,
		baseAttack = 5,
		expReward = 10,
		goldReward = 5,
	},
}

return table.freeze({
	["enemy_slime"] = table.freeze(definitions["enemy_slime"]),
})
