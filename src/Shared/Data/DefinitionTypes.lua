--!strict

-- Static definitions use DefinitionId values. Runtime entities use EntityId values
-- elsewhere and must not be represented by these contracts.

export type HeroDefinition = {
	DefinitionId: string,
	DisplayName: string,
	RarityDefinitionId: string,
	Role: string,
	VisualKey: string,
}

export type EnemyDefinition = {
	DefinitionId: string,
	DisplayName: string,
	RarityDefinitionId: string,
	VisualKey: string,
}

export type RarityDefinition = {
	DefinitionId: string,
	DisplayName: string,
	SortOrder: number,
	ColorHex: string,
}

export type Definition = HeroDefinition | EnemyDefinition | RarityDefinition

return {}
