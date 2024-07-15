local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-HellfireCitadel.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-HellfireCitadel.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-HellfireCitadel.blp";

instance:setAttributes(256, "The Blood Furnace", EJ_Descriptions.Instances["THEBLOODFURNACE"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local the_maker = EJ_Data:CreateEncounter();
the_maker:setAttributes("The Maker", "All creatures who use the power of fel magic, willingly or otherwise, slowly take on the appearance of demons. The Maker accelerates their corruption and performs cruel experiments on any who attempt to resist.", 256, 1922, 1, 4);
the_maker:setLoot({}); 
instance:addEncounter(the_maker); 

local broggok = EJ_Data:CreateEncounter();
broggok:setAttributes("Broggok", "Some creatures occasionally have second thoughts about their allegiance to their new, corrupt masters. Broggok ensures that any subversive notions among the fel orcs are permanently eradicated.", 256, 1924, 2, 4);
broggok:setLoot({}); 
instance:addEncounter(broggok); 

local keli_dan_the_breaker = EJ_Data:CreateEncounter();
keli_dan_the_breaker:setAttributes("Keli'dan the Breaker", "When Illidan overthrew the pit lord Magtheridon and took control of Outland, he had the demonic leader imprisoned beneath the Hellfire Citadel. Only the most stalwart among Illidan's forces could ever hope to keep him contained; the ruthless orc, Keli'dan, was the only possible choice.", 256, 1923, 3, 4);
keli_dan_the_breaker:setLoot({}); 
instance:addEncounter(keli_dan_the_breaker); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, false);