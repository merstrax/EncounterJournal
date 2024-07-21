local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ZulAman.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ZulAman.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ZulAman.blp";

instance:setAttributes(800, "Zul'Aman", EJ_Descriptions.Instances["ZULAMAN"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local akilzon = EJ_Data:CreateEncounter();
akilzon:setAttributes("Akil'zon", "", 800, 7300, 0, 8);
akilzon:setLoot({33286,33215,33216,33281,33293,33214,33283,33591,33590,33481,33492,33500});
instance:addEncounter(akilzon);

local nalorakk = EJ_Data:CreateEncounter();
nalorakk:setAttributes("Nalorakk", "", 800, 7310, 1, 8);
nalorakk:setLoot({33203,33285,33211,33206,33327,33191,33640,33496,33498,33971,33495,33480});
instance:addEncounter(nalorakk);

local janalai = EJ_Data:CreateEncounter();
janalai:setAttributes("Jan'alai", "", 800, 7320, 2, 8);
janalai:setLoot({33357,33356,33329,33328,33354,33326,33332,33499,33805,33491,33490,33489});
instance:addEncounter(janalai);

local halazzi = EJ_Data:CreateEncounter();
halazzi:setAttributes("Halazzi", "", 800, 7330, 3, 8);
halazzi:setLoot({33317,33300,33322,33533,33299,33303,33297,33483,33493,33497,33979,33465});
instance:addEncounter(halazzi);

local hex_lord_malacrass = EJ_Data:CreateEncounter();
hex_lord_malacrass:setAttributes("Hex Lord Malacrass", "", 800, 7340, 3, 8);
hex_lord_malacrass:setLoot({33592,33453,33463,33432,33464,33421,33446,34029,33828,38634,33389,33298,33388,33494});
instance:addEncounter(hex_lord_malacrass);

local zuljin = EJ_Data:CreateEncounter();
zuljin:setAttributes("Zul'jin", "", 800, 7350, 3, 8);
zuljin:setLoot({33471,33479,33469,33473,33466,33830,33831,33829,24537,33467,33478,33476,33468,33474,34071});
instance:addEncounter(zuljin);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Raids, 6);