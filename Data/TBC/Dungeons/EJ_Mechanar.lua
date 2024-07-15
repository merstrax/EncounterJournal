local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-TempestKeep.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-TempestKeep.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-TempestKeep.blp";

instance:setAttributes(258, "The Mechanar", EJ_Descriptions.Instances["THEMECHANAR"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local mechano_lord_capacitus = EJ_Data:CreateEncounter();
mechano_lord_capacitus:setAttributes("Mechano-Lord Capacitus", "It takes a tremendous amount of skill and precision to harvest the power of the naaru's manacells. These talents can easily be turned upon any intruders.", 258, 1932, 1, 4);
mechano_lord_capacitus:setLoot({}); 
instance:addEncounter(mechano_lord_capacitus); 

local nethermancer_sepethrea = EJ_Data:CreateEncounter();
nethermancer_sepethrea:setAttributes("Nethermancer Sepethrea", "Thanks to her skills at quickly summoning creatures to destroy any enemies, Sepethrea was chosen as an apprentice to Pathaleon the Calculator, the blood elf in charge of the Mechanar.", 258, 1930, 2, 4);
nethermancer_sepethrea:setLoot({}); 
instance:addEncounter(nethermancer_sepethrea); 

local pathaleon_the_calculator = EJ_Data:CreateEncounter();
pathaleon_the_calculator:setAttributes("Pathaleon the Calculator", "Following the Sunwell's defilement, the vainglorious arcanist Pathaleon saw an opportunity to gain renown by aiding Kael'thas in finding a cure for his race's addiction to magic. This single-minded quest led him to join the blood elf prince on Outland and oversee his disastrous experiments. Most recently, Pathaleon has begun harnessing the Tempest Keep's otherworldly technologies in pursuit of fame and power.", 258, 1931, 3, 4);
pathaleon_the_calculator:setLoot({}); 
instance:addEncounter(pathaleon_the_calculator); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, false);