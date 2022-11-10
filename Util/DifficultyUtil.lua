DifficultyUtil = {};

DifficultyUtil.ID = {
	None = 0;
	DungeonNormal = 1,
	DungeonHeroic = 2,
	DungeonMythic = 3,
	RaidNormal = 4,
	RaidHeroic = 5,
	RaidMythic = 6,
	RaidAscended = 7,
	DungeonChallenge = 8,
	DungeonTimewalker = 9,
	RaidTimewalker = 10,

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
	[DifficultyUtil.ID.DungeonChallenge] = "CHALLENGE_MODE",
	[DifficultyUtil.ID.DungeonTimewalker] = "Timewalking Dungeon",
	[DifficultyUtil.ID.RaidTimewalker] = "Timewalking Raid",
}

local PRIMARY_RAIDS = { DifficultyUtil.ID.RaidAscended, DifficultyUtil.ID.RaidNormal, DifficultyUtil.ID.RaidHeroic, DifficultyUtil.ID.RaidMythic };

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