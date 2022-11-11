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
	[DifficultyUtil.ID.DungeonNormal] = "Normal Dungeon",
	[DifficultyUtil.ID.DungeonHeroic] = "Heroic Dungeon",
	[DifficultyUtil.ID.DungeonMythic] = "Mythic Dungeon",
	[DifficultyUtil.ID.RaidNormal] = "Normal Raid",
	[DifficultyUtil.ID.RaidHeroic] = "Heroic Raid",
	[DifficultyUtil.ID.RaidMythic] = "Mythic Raid",
	[DifficultyUtil.ID.RaidAscended] = "Ascended Raid",
	[DifficultyUtil.ID.DungeonPlus] = "Mythic+ Dungeon",
	[DifficultyUtil.ID.DungeonTimewalker] = "Timewalking Dungeon",
	[DifficultyUtil.ID.RaidTimewalker] = "Timewalking Raid",
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

local difficultyToMaxPlayersMap = { };
function DifficultyUtil.GetMaxPlayers(difficultyID)
	local maxPlayers = difficultyToMaxPlayersMap[difficultyID];
	if not maxPlayers then
		if (difficultyID == DifficultyUtil.ID.DungeonNormal) or (difficultyID == DifficultyUtil.ID.DungeonHeroic) or (difficultyID == DifficultyUtil.ID.DungeonMythic) then
			maxPlayers = 5;
		else
			maxPlayers = 25;
		end
		difficultyToMaxPlayersMap[difficultyID] = maxPlayers;
	end
	return maxPlayers;
end