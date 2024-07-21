local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Auchindoun.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Auchindoun.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Auchindoun.blp";

instance:setAttributes(253, "Shadow Labyrinth", EJ_Descriptions.Instances["SHADOWLABYRINTH"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);
instance.hsHeroicLoot = true;

local ambassador_hellmaw = EJ_Data:CreateEncounter();
ambassador_hellmaw:setAttributes("Ambassador Hellmaw", "A powerful demonic servant and acolyte of pain, Ambassador Hellmaw is dedicated to the art of death. He loves nothing more than the taste of a mortal's lifeblood tinged with horror and despair.  Hellmaw is bound by the fel orcs of the Shadow Labyrinth and fed a constant stream of prisoners, bolstering the demon to serve the black will of his masters.", 253, 1908, 1, 4);
ambassador_hellmaw:setLoot({});
ambassador_hellmaw:setLoot({}, true);
instance:addEncounter(ambassador_hellmaw);

local blackheart_the_inciter = EJ_Data:CreateEncounter();
blackheart_the_inciter:setAttributes("Blackheart the Inciter", "When the orcish Horde first invaded Azeroth through the Dark Portal, two Shadow Council members instead turned their attentions to the ancient draenei burial grounds of Auchindoun. The unquiet spirits in the area proved to be excellent subjects for the warlock Blackheart to perfect his mind control abilities.", 253, 1909, 2, 4);
blackheart_the_inciter:setLoot({});
blackheart_the_inciter:setLoot({}, true);
instance:addEncounter(blackheart_the_inciter);

local grandmaster_vorpil = EJ_Data:CreateEncounter();
grandmaster_vorpil:setAttributes("Grandmaster Vorpil", "In the early days of the Horde, Grandmaster Vorpil convinced the orc warlock Gul'dan to allow him to investigate the mysteries of Auchindoun, secretly desiring to harness the energy of the frighteningly powerful cosmic essences that permeated the area.", 253, 1911, 3, 4);
grandmaster_vorpil:setLoot({});
grandmaster_vorpil:setLoot({}, true);
instance:addEncounter(grandmaster_vorpil);

local murmur = EJ_Data:CreateEncounter();
murmur:setAttributes("Murmur", "In the beginning\"... \"So far away\"... such phrases cannot begin to describe this elemental's origin. Its existence heralds pure destruction. Worlds shatter and the pieces scatter at its whim. Only the truly mad would think to summon it. Perhaps there is yet time to banish Murmur before it fully enters Outland.", 253, 1910, 4, 4);
murmur:setLoot({});
murmur:setLoot({}, true);
instance:addEncounter(murmur);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Dungeons);