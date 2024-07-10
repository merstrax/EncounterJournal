local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackfathomDeeps.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackfathomDeeps.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackfathomDeeps.blp";

instance:setAttributes(227, "Blackfathom Deeps", EJ_Descriptions.Instances["BLACKFATHOMDEEPS"], 48, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.DungeonNormal);

local ghamoo_ra = EJ_Data:CreateEncounter();
ghamoo_ra:setAttributes("Ghamoo-Ra", "When the Twilight's Hammer cult arrived, its followers roused and imprisoned one of the last peaceful creatures living in Elune's temple. The cult delighted in tormenting the giant turtle for years, flaying its mind and body until it succumbed to madness. Naming the beast Ghamoo-Ra, the cultists attempt to control its savagery in order to protect their lair.", 0.333333, 0.60687, 227, 1667, 1, 9472, 221, 2);
ghamoo_ra:setLoot({6908,6907});
instance:addEncounter(ghamoo_ra); 

local lady_sarevess = EJ_Data:CreateEncounter();
lady_sarevess:setAttributes("Lady Sarevess", "", 0.11194, 0.389552, 227, 1668, 2, 9476, 221, 2);
lady_sarevess:setLoot({888,11121,3078});
instance:addEncounter(lady_sarevess); 

local gelihast = EJ_Data:CreateEncounter();
gelihast:setAttributes("Gelihast", "", 0.543284, 0.564179, 227, 1669, 3, 9480, 221, 2);
gelihast:setLoot({6906,6905}); 
instance:addEncounter(gelihast); 

local baron_aquanis = EJ_Data:CreateEncounter();
baron_aquanis:setAttributes("Baron Aquanis", "", 0, 0, 227, 1675, 4, 9518, 319, 4);
baron_aquanis:setLoot({16782,16886,16887});
instance:addEncounter(baron_aquanis);

local old_serrakis = EJ_Data:CreateEncounter();
old_serrakis:setAttributes("Old Serra'kis", "", 0.586567, 0.308955, 227, 1676, 5, 9502, 223, 2);
old_serrakis:setLoot({6901,6902,6904});
instance:addEncounter(old_serrakis); 

local twilight_lord_kelris = EJ_Data:CreateEncounter();
twilight_lord_kelris:setAttributes("Twilight Lord Kelris", "", 0.52388, 0.808209, 227, 1671, 6, 9507, 222, 2);
twilight_lord_kelris:setLoot({6903});
instance:addEncounter(twilight_lord_kelris); 

local aku_mai = EJ_Data:CreateEncounter();
aku_mai:setAttributes("Aku'mai", "Aku'mai, an ancient evil, carries within him a small measure of the Old Gods' power. This three-headed hydra is greatly feared for his mindless savagery and insatiable hunger for living flesh, but the Twilight's Hammer worships him as a divine sign that the Old Gods will soon return.", 0.855224, 0.864179, 227, 1672, 7, 9442, 222, 2);
aku_mai:setLoot({6910,6911,6909}); 
instance:addEncounter(aku_mai); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);