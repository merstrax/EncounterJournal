local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-TempestKeep.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-TempestKeep.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-TempestKeep.blp";

instance:setAttributes(254, "The Arcatraz", EJ_Descriptions.Instances["THEARCATRAZ"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);
instance.hasLootHeroic = true;

local zereketh_the_unbound = EJ_Data:CreateEncounter();
zereketh_the_unbound:setAttributes("Zereketh the Unbound", "Most creatures from the Twisting Nether require constant directions from their masters, but a select few voidwraiths need no such orders. Zereketh stands at the entrance to Arcatraz, ready to slay all who would dare challenge him.", 254, 1916, 1, 4);
zereketh_the_unbound:setLoot({28373,28374,28384,28375,28372});
zereketh_the_unbound:setLoot({}, true);
instance:addEncounter(zereketh_the_unbound);

local dalliah_the_doomsayer = EJ_Data:CreateEncounter();
dalliah_the_doomsayer:setAttributes("Dalliah the Doomsayer", "Before she was imprisoned by the naaru, Dalliah was one of the most vicious and aggressive warriors within the Burning Legion. Spending so much time as a cellmate to Wrath-Scryer Soccothrates did not improve her disposition either.", 254, 1913, 2, 4);
dalliah_the_doomsayer:setLoot({28391,28390,28387,28392,28386});
dalliah_the_doomsayer:setLoot({}, true);
instance:addEncounter(dalliah_the_doomsayer);

local wrath_scryer_soccothrates = EJ_Data:CreateEncounter();
wrath_scryer_soccothrates:setAttributes("Wrath-Scryer Soccothrates", "Millennia ago, Soccothrates held a position of honor among the Wrathguards, standing at the side of the Burning Legion's top commanders. Confinement did not suit his considerable ego. Neither did his cellmate.", 254, 1915, 3, 4);
wrath_scryer_soccothrates:setLoot({28396,28398,28394,28393,28397});
wrath_scryer_soccothrates:setLoot({}, true);
instance:addEncounter(wrath_scryer_soccothrates);

local harbinger_skyriss = EJ_Data:CreateEncounter();
harbinger_skyriss:setAttributes("Harbinger Skyriss", "The naaru believed the persuasive voice of Harbinger Skyriss was silenced when they contained him and forced him into a long, dreamless sleep. The unfortunate warden of Arcatraz learned the naaru were wrong. Skyriss had just enough energy to speak to Warden Mellichar in a still, small voice. Time took care of the rest.", 254, 1914, 4, 4);
harbinger_skyriss:setLoot({28415,28413,28414,28231,28403,28205,28406,28419,28407,28418,28412,28416});
harbinger_skyriss:setLoot({29241,29248,29252,29360}, true);
instance:addEncounter(harbinger_skyriss);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Dungeons);