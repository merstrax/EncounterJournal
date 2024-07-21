local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Auchindoun.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Auchindoun.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Auchindoun.blp";

instance:setAttributes(250, "Mana-Tombs", EJ_Descriptions.Instances["MANATOMBS"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);
instance.hasLootHeroic = true;

local pandemonius = EJ_Data:CreateEncounter();
pandemonius:setAttributes("Pandemonius", "This infamous Void Lord is also known as the Duke of Chaos, the Eater of Nations, and Worldslayer. Pandemonius was one of the commanders serving under Dimensius when the ethereal homeworld of K'aresh was destroyed. He was later bound by Nexus-Prince Shaffar and forced to continue sating his unending hunger in service to the ethereals.", 250, 1900, 1, 4);
pandemonius:setLoot({25941,25942,25940,25943,28166,25939});
pandemonius:setLoot({27816,27818,27813,27815,27814,27817}, true);
instance:addEncounter(pandemonius);

local tavarok = EJ_Data:CreateEncounter();
tavarok:setAttributes("Tavarok", "Under the command of Kael'thas Sunstrider, Pathaleon the Calculator summoned a powerful colossus to gather the arcane energies flowing from beneath the Mana Tombs. Tavarok has unexpectedly been transformed by the unique emanations, losing the red-tinged corruption of Pathaleon's influence. The white colossus has gained his own free will and uses it to greedily consume all who would stand in his way.", 250, 1901, 2, 4);
tavarok:setLoot({25945,25946,25947,25952,25944,25950});
tavarok:setLoot({27824,27821,27825,27826,27823,27822}, true);
instance:addEncounter(tavarok);

local yor = EJ_Data:CreateEncounter();
yor:setAttributes("Yor", "A \"gift\" from Illidan Stormrage to accompany Nexus-Prince Shaffar, Yor is a void hound of unlimited savagery and power.  The prince's advisors warned him that Illidan's demonic gift was most likely a ruse set to betray Shaffar once he had met his goals. The prince fed those advisors to Yor... but has since kept the hound in a stasis chamber, just in case.", 250, 250, 3, 2);
yor:setLoot({});
yor:setLoot({31919,31920,31921,31922,31923,31924,31554,31562,31570,31578}, true);
instance:addEncounter(yor);

local nexus_prince_shaffar = EJ_Data:CreateEncounter();
nexus_prince_shaffar:setAttributes("Nexus-Prince Shaffar", "Convinced that vast riches lay within the depths of the Mana Tombs, Nexus-Prince Shaffar has spent untold amounts of his own considerable fortune to move an army into the shadowed halls of this crumbling ruin, and to keep competing ethereals out. The prince's greed knows no bounds, and he has vowed to uncover the mysteries of the Mana Tombs or die trying.", 250, 1899, 4, 4);
nexus_prince_shaffar:setLoot({25957,25955,25956,25954,25962,25953});
nexus_prince_shaffar:setLoot({29240,30535,29352,32082,27831,27843,27827,27835,27844,27798,27837,27828,28400,27829,27840,27842}, true);
instance:addEncounter(nexus_prince_shaffar);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Dungeons);