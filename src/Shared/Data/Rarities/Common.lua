--!strict

local DefinitionTypes = require(script.Parent.Parent.DefinitionTypes)

local Common: DefinitionTypes.RarityDefinition = table.freeze({
	DefinitionId = "rarity.common",
	DisplayName = "Common",
	SortOrder = 1,
	ColorHex = "#B8C0CC",
})

return Common
