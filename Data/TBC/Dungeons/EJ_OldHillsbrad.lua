local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CavernsOfTime.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CavernsOfTime.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CavernsOfTime.blp";

instance:setAttributes(251, "Old Hillsbrad Foothills", EJ_Descriptions.Instances["OLDHILLSBRAD"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);
instance.hasLootHeroic = true;

local lieutenant_drake = EJ_Data:CreateEncounter();
lieutenant_drake:setAttributes("Lieutenant Drake", "Lieutenant Drake was an ambitious military man, with his eyes set upon the glory of command during the Second War. His ambition was only matched by his hatred for the green-skinned orcs who had slain so many of his companions, a hatred which took form in his cruel treatment of the prisoners in the internment camps of Durnholde Keep.", 251, 1905, 1, 4);
lieutenant_drake:setLoot({27423,27418,27417,27420,27436});
lieutenant_drake:setLoot({28212,28214,28215,28211,28213,28210}, true);
instance:addEncounter(lieutenant_drake);

local captain_skarloc = EJ_Data:CreateEncounter();
captain_skarloc:setAttributes("Captain Skarloc", "Fiercely loyal to Aedelas Blackmoore, Captain Skarloc rose through the ranks of the Durnholde military alongside his friend Aliden Perenolde.  When Aliden decided to take up operations in the Alterac Mountains, Skarloc stayed with his Lord and mentor. He became Aedelas's most trusted comrade and advisor, earning the title \"Blackmoore's Spear.\"", 251, 1907, 2,  4);
captain_skarloc:setLoot({27428,27430,27427,27424,27426});
captain_skarloc:setLoot({28218,28220,28219,28221,28217,28216}, true);
instance:addEncounter(captain_skarloc);

local epoch_hunter = EJ_Data:CreateEncounter();
epoch_hunter:setAttributes("Epoch Hunter", "The mysteriously-named Epoch Hunter is an assassin from the infinite dragonflight sent to alter the course of history by killing Thrall before he can escape from Durnholde. The shadowy drake has slain countless beings in service of his cause, but this will be his most important kill. He will summon every ounce of his strength, power, subtlety, and cunning to bring about the end of this timeline.", 251, 1906, 3, 4);
epoch_hunter:setLoot({27433,27434,27440,27432,27431});
epoch_hunter:setLoot({29250,29246,29357,30534,30536,27911,28344,28233,27904,28227,28223,28226,28222,28191,28224,28401,28225}, true);
instance:addEncounter(epoch_hunter);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Dungeons);