DifficultyUtil = {};

DifficultyUtil.ID = {
	None = 1;
	DungeonNormal = 2,
	DungeonHeroic = 3,
	DungeonMythic = 4,
	RaidNormal = 5,
	RaidHeroic = 6,
	RaidMythic = 7,
	RaidAscended = 8,
	DungeonPlus = 9,
	DungeonTimewalker = 10,
	RaidTimewalker = 11,
};

local DIFFICULTY_NAMES =
{
	[DifficultyUtil.ID.None] = "None";
	[DifficultyUtil.ID.DungeonNormal] = "Normal",
	[DifficultyUtil.ID.DungeonHeroic] = "Heroic",
	[DifficultyUtil.ID.DungeonMythic] = "Mythic",
	[DifficultyUtil.ID.RaidNormal] = "Normal",
	[DifficultyUtil.ID.RaidHeroic] = "Heroic",
	[DifficultyUtil.ID.RaidMythic] = "Mythic",
	[DifficultyUtil.ID.RaidAscended] = "Ascended",
	[DifficultyUtil.ID.DungeonPlus] = "Mythic+",
	[DifficultyUtil.ID.DungeonTimewalker] = "Timewalking",
	[DifficultyUtil.ID.RaidTimewalker] = "Timewalking",
}

local PRIMARY_RAIDS = { DifficultyUtil.ID.RaidNormal, DifficultyUtil.ID.RaidHeroic, DifficultyUtil.ID.RaidMythic, DifficultyUtil.ID.RaidAscended };

function DifficultyUtil.GetDifficultyName(difficultyID)
	return DIFFICULTY_NAMES[difficultyID];
end

function DifficultyUtil.IsPrimaryRaid(difficultyID)
	return tContains(PRIMARY_RAIDS, difficultyID);
end

function DifficultyUtil.GetNextPrimaryRaidDifficultyID(difficultyID)
	for i, id in ipairs(PRIMARY_RAIDS) do
		if id == difficultyID then
			return PRIMARY_RAIDS[i + 1];
		end
	end
	return nil;
end

DifficultyUtil.difficultyToMaxPlayersMap = { };
function DifficultyUtil:GetMaxPlayers(difficultyID)
	if (difficultyID == self.ID.DungeonNormal) or (difficultyID == self.ID.DungeonHeroic) or (difficultyID == self.ID.DungeonMythic) then
		return 5;
	else
		return 25;
	end
end