local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackTemple.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackTemple.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackTemple.blp";

instance:setAttributes(751, "Black Temple", EJ_Descriptions.Instances["BLACKTEMPLE"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local high_warlord_naj_entus = EJ_Data:CreateEncounter();
high_warlord_naj_entus:setAttributes("High Warlord Naj'entus", "", 751, 601, 1, 8);
high_warlord_naj_entus:setLoot({}); 
instance:addEncounter(high_warlord_naj_entus);

local supremus = EJ_Data:CreateEncounter();
supremus:setAttributes("Supremus", "", 751, 602, 2, 8);
supremus:setLoot({});
instance:addEncounter(supremus); 

local shade_of_akama = EJ_Data:CreateEncounter();
shade_of_akama:setAttributes("Shade of Akama", "", 751, 603, 3, 8);
shade_of_akama:setLoot({}); 
instance:addEncounter(shade_of_akama); 

local teron_gorefiend = EJ_Data:CreateEncounter();
teron_gorefiend:setAttributes("Teron Gorefiend", "", 751, 604, 4, 8);
teron_gorefiend:setLoot({}); 
instance:addEncounter(teron_gorefiend); 

local gurtogg_bloodboil = EJ_Data:CreateEncounter();
gurtogg_bloodboil:setAttributes("Gurtogg Bloodboil", "", 751, 605, 5, 8);
gurtogg_bloodboil:setLoot({}); 
instance:addEncounter(gurtogg_bloodboil); 

local reliquary_of_souls = EJ_Data:CreateEncounter();
reliquary_of_souls:setAttributes("Reliquary of Souls", "", 751, 606, 6, 8);
reliquary_of_souls:setLoot({}); 
instance:addEncounter(reliquary_of_souls); 

local mother_shahraz = EJ_Data:CreateEncounter();
mother_shahraz:setAttributes("Mother Shahraz", "", 751, 607, 7, 8);
mother_shahraz:setLoot({}); 
instance:addEncounter(mother_shahraz); 

local the_illidari_council = EJ_Data:CreateEncounter();
the_illidari_council:setAttributes("The Illidari Council", "", 751, 608, 8, 8);
the_illidari_council:setLoot({}); 
instance:addEncounter(the_illidari_council); 

local illidan_stormrage = EJ_Data:CreateEncounter();
illidan_stormrage:setAttributes("Illidan Stormrage", "", 751, 609, 9, 8);
illidan_stormrage:setLoot({});
instance:addEncounter(illidan_stormrage); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, true, 8);