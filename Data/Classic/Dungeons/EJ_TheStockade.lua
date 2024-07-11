local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-TheStockade.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-TheStockade.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-TheStockade.blp";

instance:setAttributes(238, "The Stockade", EJ_Descriptions.Instances["THESTOCKADES"], 34, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local hogger = EJ_Data:CreateEncounter();
hogger:setAttributes("Hogger", "Convict #SC55: Hogger Charges: Too many to list here Imprisoning the Riverpaw leader has come at a high cost, including the partial blinding of the warden. Fearing that Hogger might escape, Thelwater has authorized the gnoll's termination with extreme prejudice.", 238, 1144, 1, 2);
hogger:setLoot({}); 
instance:addEncounter(hogger); 

local lord_overheat = EJ_Data:CreateEncounter();
lord_overheat:setAttributes("Lord Overheat", "Convict #NA: Lord Overheat Charges: Homicide (multiple counts) The natural disasters wrought by the Cataclysm caused elementals to erupt into the prison complex, slaughtering half of the inmates upon arrival. Removing these incensed threats is imperative to restoring order to the stockade.", 238, 1145, 2, 2);
lord_overheat:setLoot({}); 
instance:addEncounter(lord_overheat); 

local randolph_moloch = EJ_Data:CreateEncounter();
randolph_moloch:setAttributes("Randolph Moloch", "Convict #AC317: Randolph Moloch Charges: Embezzlement, fraud, theft, and homicide Moloch has been identified as the ringleader of the prison revolt. Given his connections to the House of Nobles, however, the use of lethal force to subdue this convict is not authorized.", 238, 1146, 3, 2);
randolph_moloch:setLoot({}); 
instance:addEncounter(randolph_moloch); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);