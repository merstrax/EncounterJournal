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
};

DifficultyUtil.Mask = {
	-1, --None
	1, --Dungeon Normal
	2, --Dungeon Heroic
	4, --Dungeon Mythic
	8, --Raid Normal
	16, --Raid Heroic
	32, --Raid Mythic
	64, --Raid Ascended
};

--So we dont have to do loops to add them together
DifficultyUtil.MaskTable = {
	[1] = -1,
	[DifficultyUtil.ID.DungeonNormal] = 1,
	[DifficultyUtil.ID.DungeonHeroic] = 2 + 4,
	[DifficultyUtil.ID.DungeonMythic] = 4,
	[DifficultyUtil.ID.RaidNormal] = 8,
	[DifficultyUtil.ID.RaidHeroic] = 16 + 32 + 64,
	[DifficultyUtil.ID.RaidMythic] = 32 + 64,
	[DifficultyUtil.ID.RaidAscended] = 64,
};

function DifficultyUtil.OrHigher(difficultyID)
	return DifficultyUtil.MaskTable[difficultyID];
end

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