local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CavernsOfTime.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CavernsOfTime.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CavernsOfTime.blp";

instance:setAttributes(251, "Old Hillsbrad Foothills", EJ_Descriptions.Instances["OLDHILLSBRAD"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local lieutenant_drake = EJ_Data:CreateEncounter();
lieutenant_drake:setAttributes("Lieutenant Drake", "Lieutenant Drake was an ambitious military man, with his eyes set upon the glory of command during the Second War. His ambition was only matched by his hatred for the green-skinned orcs who had slain so many of his companions, a hatred which took form in his cruel treatment of the prisoners in the internment camps of Durnholde Keep.", 251, 1905, 1, 4);
lieutenant_drake:setLoot({}); 
instance:addEncounter(lieutenant_drake); 

local captain_skarloc = EJ_Data:CreateEncounter();
captain_skarloc:setAttributes("Captain Skarloc", "Fiercely loyal to Aedelas Blackmoore, Captain Skarloc rose through the ranks of the Durnholde military alongside his friend Aliden Perenolde.  When Aliden decided to take up operations in the Alterac Mountains, Skarloc stayed with his Lord and mentor. He became Aedelas's most trusted comrade and advisor, earning the title \"Blackmoore's Spear.\"", 251, 1907, 2,  4);
captain_skarloc:setLoot({}); 
instance:addEncounter(captain_skarloc); 

local epoch_hunter = EJ_Data:CreateEncounter();
epoch_hunter:setAttributes("Epoch Hunter", "The mysteriously-named Epoch Hunter is an assassin from the infinite dragonflight sent to alter the course of history by killing Thrall before he can escape from Durnholde. The shadowy drake has slain countless beings in service of his cause, but this will be his most important kill. He will summon every ounce of his strength, power, subtlety, and cunning to bring about the end of this timeline.", 251, 1906, 3, 4);
epoch_hunter:setLoot({}); 
instance:addEncounter(epoch_hunter); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, false);