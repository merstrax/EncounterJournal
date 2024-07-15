local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-TempestKeep.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-TempestKeep.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-TempestKeep.blp";

instance:setAttributes(257, "The Botanica", EJ_Descriptions.Instances["THEBOTANICA"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local commander_sarannis = EJ_Data:CreateEncounter();
commander_sarannis:setAttributes("Commander Sarannis", "When the fallen blood elf leader, Kael'thas, seized control of the Tempest Keep, he immediately ordered Commander Sarannis to prepare defenses against whomever the naaru might send to reclaim the keep.", 257, 1925, 1, 4);
commander_sarannis:setLoot({}); 
instance:addEncounter(commander_sarannis); 

local high_botanist_freywinn = EJ_Data:CreateEncounter();
high_botanist_freywinn:setAttributes("High Botanist Freywinn", "Mere minutes after entering the Botanica, Freywinn began conducting reckless experiments in order to unlock the power hidden among the native plant life of Outland.", 257, 1926, 2, 4);
high_botanist_freywinn:setLoot({}); 
instance:addEncounter(high_botanist_freywinn); 

local thorngrin_the_tender = EJ_Data:CreateEncounter();
thorngrin_the_tender:setAttributes("Thorngrin the Tender", "Experiments require resources. Thorngrin the Tender makes sure that Kael'thas's botanists have the power and essence they need to reveal the naaru's secrets, even if that means untold numbers of living creatures must be sacrificed to obtain it.", 257, 1928, 3, 4);
thorngrin_the_tender:setLoot({}); 
instance:addEncounter(thorngrin_the_tender); 

local laj = EJ_Data:CreateEncounter();
laj:setAttributes("Laj", "The naaru gathered samples of unusual wildlife from across Outland. Their safeguards were destroyed when the Botanica was invaded, leaving some of the most dangerous specimens free to roam.", 257, 1927, 4, 4);
laj:setLoot({}); 
instance:addEncounter(laj); 

local warp_splinter = EJ_Data:CreateEncounter();
warp_splinter:setAttributes("Warp Splinter", "The night elves of Darnassus have asked for help in restoring an Ancient of the Arcane, who found itself trapped in Tempest Keep. Frightened by the recent attack by Kael'thas Sunstrider's forces, the Warp Splinter is unable to differentiate friend from foe and is liable to attack any who disturb it.", 257, 1929, 5, 4);
warp_splinter:setLoot({}); 
instance:addEncounter(warp_splinter); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, false);