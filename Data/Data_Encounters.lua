--Shadowfang Keep
local sfk_glubtok = createEncounter();
sfk_glubtok:setAttributes("Glubtok", EJ_Descriptions.Encounters["GLUBTOK"], 0.3652697, 0.6122755, 63, 1064, 1, 2010, DifficultyUtil.ID.DungeonNormal);
sfk_glubtok:setLoot({});
sfk_glubtok:addSection({ Title = "Stage One: Fists of Flame and Frost", Desc = "", JournalEncounterID = 89, OrderIndex = 1, ParentSectionID = 0, FirstChildSectionID = 2011, NextSiblingSectionID = 2014, Type = 0, IconCreatureDisplayInfoID = 0, UiModelSceneID = 0, SpellID = 0, IconFileDataID = 0, Flags = 1, IconFlags = 0, DifficultyMask = -1})


EJ_Data.Vanilla.Dungeons["SHADOWFANGKEEP"]:addEncounter(sfk_glubtok);