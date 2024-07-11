local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackfathomDeeps.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackfathomDeeps.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackfathomDeeps.blp";

instance:setAttributes(227, "Blackfathom Deeps", EJ_Descriptions.Instances["BLACKFATHOMDEEPS"], 48, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local ghamoo_ra = EJ_Data:CreateEncounter();
ghamoo_ra:setAttributes("Ghamoo-Ra", "When the Twilight's Hammer cult arrived, its followers roused and imprisoned one of the last peaceful creatures living in Elune's temple. The cult delighted in tormenting the giant turtle for years, flaying its mind and body until it succumbed to madness. Naming the beast Ghamoo-Ra, the cultists attempt to control its savagery in order to protect their lair.", 227, 1667, 1, 2);
ghamoo_ra:setLoot({6908,6907});
instance:addEncounter(ghamoo_ra); 

local lady_sarevess = EJ_Data:CreateEncounter();
lady_sarevess:setAttributes("Lady Sarevess", "", 227, 1668, 2, 2);
lady_sarevess:setLoot({888,11121,3078});
instance:addEncounter(lady_sarevess); 

local gelihast = EJ_Data:CreateEncounter();
gelihast:setAttributes("Gelihast", "", 227, 1669, 3, 2);
gelihast:setLoot({6906,6905}); 
instance:addEncounter(gelihast); 

local baron_aquanis = EJ_Data:CreateEncounter();
baron_aquanis:setAttributes("Baron Aquanis", "", 0, 0, 227, 1675, 4, 4);
baron_aquanis:setLoot({16782,16886,16887});
instance:addEncounter(baron_aquanis);

local old_serrakis = EJ_Data:CreateEncounter();
old_serrakis:setAttributes("Old Serra'kis", "", 227, 1676, 5, 2);
old_serrakis:setLoot({6901,6902,6904});
instance:addEncounter(old_serrakis); 

local twilight_lord_kelris = EJ_Data:CreateEncounter();
twilight_lord_kelris:setAttributes("Twilight Lord Kelris", "", 227, 1671, 6, 2);
twilight_lord_kelris:setLoot({6903});
instance:addEncounter(twilight_lord_kelris); 

local aku_mai = EJ_Data:CreateEncounter();
aku_mai:setAttributes("Aku'mai", "Aku'mai, an ancient evil, carries within him a small measure of the Old Gods' power. This three-headed hydra is greatly feared for his mindless savagery and insatiable hunger for living flesh, but the Twilight's Hammer worships him as a divine sign that the Old Gods will soon return.", 227, 1672, 7, 2);
aku_mai:setLoot({6910,6911,6909}); 
instance:addEncounter(aku_mai); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);