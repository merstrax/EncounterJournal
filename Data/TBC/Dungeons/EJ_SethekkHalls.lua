local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Auchindoun.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Auchindoun.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Auchindoun.blp";

instance:setAttributes(252, "Sethekk Halls", EJ_Descriptions.Instances["SETHEKKHALLS"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local darkweaver_syth = EJ_Data:CreateEncounter();
darkweaver_syth:setAttributes("Darkweaver Syth", "Darkweaver Syth is charged by the Talon King Ikiss to defend the Sethekk Halls while the renegade arakkoa search for their enigmatic god. A master of shadowy magic, this wizened trickster has learned how to bend the very elements to his sway.", 252, 1903, 1, 4);
darkweaver_syth:setLoot({}); 
instance:addEncounter(darkweaver_syth); 

local anzu = EJ_Data:CreateEncounter();
anzu:setAttributes("Anzu", "A mysterious avian deity worshipped by some of the more savage arakkoa, Anzu is a being whose origins and powers are unlike any other member of Outland's fallen pantheon. The Naaru are silent regarding this malevolent creature, for Anzu's ways are hidden from even them.", 252, 1904, 2, 2);
anzu:setLoot({}); 
instance:addEncounter(anzu); 

local talon_king_ikiss = EJ_Data:CreateEncounter();
talon_king_ikiss:setAttributes("Talon King Ikiss", "Talon King Ikiss was the charismatic spiritual leader of the daring group of arakkoa which left their home in the Terokkar forest in search of a \"promised god.\" He had received dreams of this god as he slept, and knew that revelation lay within the crumbling halls of Auchindoun. Ikiss was driven insane by the visions, and now declares himself to be Terokk reborn, a divine hero from arakkoa myth.", 252, 1902, 3, 4);
talon_king_ikiss:setLoot({}); 
instance:addEncounter(talon_king_ikiss); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, false);