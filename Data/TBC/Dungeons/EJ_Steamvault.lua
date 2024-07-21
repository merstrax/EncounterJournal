local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CoilfangReservoir.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CoilfangReservoir.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CoilfangReservoir.blp";

instance:setAttributes(261, "The Steamvault", EJ_Descriptions.Instances["THESTEAMVAULT"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);
instance.hasLootHeroic = true;

local hydromancer_thespia = EJ_Data:CreateEncounter();
hydromancer_thespia:setAttributes("Hydromancer Thespia", "At the height of the night elf empire, the Highborne Thespia delighted in art and music. Her love of these things vanished during the Great Sundering, when she and many of her kin were sucked into Azeroth's deeps and transformed into hateful naga. In the millennia that followed, Thespia remained a close confidant of her childhood friend, Lady Vashj. Without hesitation, she journeyed with her comrade to Zangarmarsh and vowed to oversee the naga's quest to drain the region's water supply.", 261, 1942, 1, 4);
hydromancer_thespia:setLoot({27508,27789,27787,27783,27784});
hydromancer_thespia:setLoot({}, true);
instance:addEncounter(hydromancer_thespia);

local mekgineer_steamrigger = EJ_Data:CreateEncounter();
mekgineer_steamrigger:setAttributes("Mekgineer Steamrigger", "The irradiation of Gnomeregan transformed many of the city's survivors into leper gnomes. Among these victims was the brilliant Mekgineer Steamrigger. Although he escaped Gnomeregan and retained his intellect, whatever ethics and compassion he had once possessed were gone. He wandered Azeroth, selling his knowledge to a number of unscrupulous groups such as the Bloodsail Buccaneers. Recently, the naga hired Steamrigger to operate the intricate machinery in Zangarmarsh's Steamvault.",261, 1943, 2, 4);
mekgineer_steamrigger:setLoot({27793,27790,27792,27791,27794});
mekgineer_steamrigger:setLoot({}, true);
instance:addEncounter(mekgineer_steamrigger);

local warlord_kalithresh = EJ_Data:CreateEncounter();
warlord_kalithresh:setAttributes("Warlord Kalithresh", "Deep within the Steamvault, the naga have begun experimenting with a mysterious substance to strengthen their warriors and purge them of fear. Kalithresh was one of Lady Vashj's first servants to volunteer as a test subject for this dark elixir. As reward, he has been charged with guarding the expansive Steamvault and ensuring the region's arcane machinery operates without interruption.",261, 1944, 3, 4);
warlord_kalithresh:setLoot({27738,27737,27801,27510,27874,28203,27475,27804,27799,27795,27806,27805});
warlord_kalithresh:setLoot({30543,29243,29463,29351}, true);
instance:addEncounter(warlord_kalithresh);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Dungeons);