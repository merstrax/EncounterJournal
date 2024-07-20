local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ZulAman.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ZulAman.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ZulAman.blp";

instance:setAttributes(800, "Zul'Aman", EJ_Descriptions.Instances["ZULAMAN"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local akilzon = EJ_Data:CreateEncounter();
akilzon:setAttributes("Akil'zon", "", 800, 7300, 0, 8);
akilzon:setLoot({}); 
instance:addEncounter(akilzon);

local nalorakk = EJ_Data:CreateEncounter();
nalorakk:setAttributes("Nalorakk", "", 800, 7310, 1, 8);
nalorakk:setLoot({}); 
instance:addEncounter(nalorakk);

local janalai = EJ_Data:CreateEncounter();
janalai:setAttributes("Jan'alai", "", 800, 7320, 2, 8);
janalai:setLoot({}); 
instance:addEncounter(janalai);

local halazzi = EJ_Data:CreateEncounter();
halazzi:setAttributes("Halazzi", "", 800, 7330, 3, 8);
halazzi:setLoot({}); 
instance:addEncounter(halazzi);

local hex_lord_malacrass = EJ_Data:CreateEncounter();
hex_lord_malacrass:setAttributes("Hex Lord Malacrass", "", 800, 7340, 3, 8);
hex_lord_malacrass:setLoot({}); 
instance:addEncounter(hex_lord_malacrass);

local zuljin = EJ_Data:CreateEncounter();
zuljin:setAttributes("Zul'jin", "", 800, 7350, 3, 8);
zuljin:setLoot({}); 
instance:addEncounter(zuljin);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, true, 6);