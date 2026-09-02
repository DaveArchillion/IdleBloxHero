-- IBH-002 Logic Test Suite
-- Standalone Lua 5.2 compatible test.
-- Mirrors the Shared definitions and registry contract without Roblox runtime.

local HeroDefinitions = {
	["hero_iron_knight"] = {
			definitionId = "hero_iron_knight",
		displayName = "Iron Knight",
		rarityId = "rarity_common",
		baseHealth = 100,
		baseAttack = 10,
	},
}

local EnemyDefinitions = {
	["enemy_slime"] = {
			definitionId = "enemy_slime",
		displayName = "Slime",
		baseHealth = 50,
		baseAttack = 5,
		expReward = 10,
		goldReward = 5,
	},
}

local RarityDefinitions = {
	["rarity_common"] = {
			definitionId = "rarity_common",
		displayName = "Common",
		tier = 1,
		colorHex = "#AAAAAA",
	},
}

local function getHero(id)
	local def = HeroDefinitions[id]
	if def == nil then
		error("DataRegistry.getHero: unknown DefinitionId '" .. id .. "'", 2)
	end
	return def
end

local function getEnemy(id)
	local def = EnemyDefinitions[id]
	if def == nil then
		error("DataRegistry.getEnemy: unknown DefinitionId '" .. id .. "'", 2)
	end
	return def
end

local function getRarity(id)
	local def = RarityDefinitions[id]
	if def == nil then
		error("DataRegistry.getRarity: unknown DefinitionId '" .. id .. "'", 2)
	end
	return def
end

local passed = 0
local failed = 0

local function test(name, fn)
	local ok, err = pcall(fn)
	if ok then
		print("PASS: " .. name)
		passed = passed + 1
	else
		print("FAIL: " .. name .. " -- " .. tostring(err))
		failed = failed + 1
	end
end

-- Test 1: Known hero lookup
test("Known hero lookup returns definition", function()
	local def = getHero("hero_iron_knight")
	assert(def ~= nil, "Expected non-nil definition")
	assert(def.definitionId == "hero_iron_knight", "Expected DefinitionId match")
	assert(def.displayName == "Iron Knight", "Expected displayName match")
	assert(def.baseHealth == 100, "Expected baseHealth match")
	assert(def.baseAttack == 10, "Expected baseAttack match")
	assert(def.rarityId == "rarity_common", "Expected rarityId match")
end)

-- Test 2: Unknown hero lookup errors deterministically
test("Unknown hero DefinitionId raises deterministic error", function()
	local ok, err = pcall(getHero, "hero_does_not_exist")
	assert(not ok, "Expected error for unknown hero")
	assert(err ~= nil, "Expected non-nil error message")
	assert(err:find("hero_does_not_exist"), "Expected DefinitionId in error message")
end)

-- Test 3: Known enemy lookup
test("Known enemy lookup returns definition", function()
	local def = getEnemy("enemy_slime")
	assert(def ~= nil, "Expected non-nil definition")
	assert(def.definitionId == "enemy_slime", "Expected DefinitionId match")
	assert(def.displayName == "Slime", "Expected displayName match")
	assert(def.baseHealth == 50, "Expected baseHealth match")
	assert(def.baseAttack == 5, "Expected baseAttack match")
	assert(def.expReward == 10, "Expected expReward match")
	assert(def.goldReward == 5, "Expected goldReward match")
end)

-- Test 4: Unknown enemy lookup errors deterministically
test("Unknown enemy DefinitionId raises deterministic error", function()
	local ok, err = pcall(getEnemy, "enemy_does_not_exist")
	assert(not ok, "Expected error for unknown enemy")
	assert(err ~= nil, "Expected non-nil error message")
end)

-- Test 5: Known rarity lookup
test("Known rarity lookup returns definition", function()
	local def = getRarity("rarity_common")
	assert(def ~= nil, "Expected non-nil definition")
	assert(def.definitionId == "rarity_common", "Expected DefinitionId match")
	assert(def.displayName == "Common", "Expected displayName match")
	assert(def.tier == 1, "Expected tier match")
	assert(def.colorHex == "#AAAAAA", "Expected colorHex match")
end)

-- Test 6: Unknown rarity lookup errors deterministically
test("Unknown rarity DefinitionId raises deterministic error", function()
	local ok, err = pcall(getRarity, "rarity_does_not_exist")
	assert(not ok, "Expected error for unknown rarity")
	assert(err ~= nil, "Expected non-nil error message")
end)

-- Test 7: Hero definition is static data only (no functions)
test("Hero definition contains no functions (static data only)", function()
	local def = getHero("hero_iron_knight")
	for k, v in pairs(def) do
		assert(type(v) ~= "function", "Definition must not contain functions, found key: " .. k)
	end
end)

-- Test 8: Enemy definition is static data only (no functions)
test("Enemy definition contains no functions (static data only)", function()
	local def = getEnemy("enemy_slime")
	for k, v in pairs(def) do
		assert(type(v) ~= "function", "Definition must not contain functions, found key: " .. k)
	end
end)

-- Test 9: DefinitionId field matches table key for all definitions
test("Hero DefinitionId field matches table key", function()
	for key, def in pairs(HeroDefinitions) do
		assert(def.definitionId == key, "DefinitionId mismatch: key=" .. key .. " definitionId=" .. def.definitionId)
	end
end)

-- Test 10: Enemy DefinitionId field matches table key
test("Enemy DefinitionId field matches table key", function()
	for key, def in pairs(EnemyDefinitions) do
		assert(def.definitionId == key, "DefinitionId mismatch: key=" .. key .. " definitionId=" .. def.definitionId)
	end
end)

print(string.format("\nResults: %d passed, %d failed", passed, failed))
if failed > 0 then
	os.exit(1)
end
