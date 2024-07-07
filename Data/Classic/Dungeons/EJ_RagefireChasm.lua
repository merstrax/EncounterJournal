local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-RagefireChasm.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-RagefireChasm.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-RagefireChasm.blp";

instance:setAttributes(226, "Ragefire Chasm", EJ_Descriptions.Instances["RAGEFIRECHASM"], 389, bgFile, btnFile, 0, loreFile, EJ_Data.Normal);

local adarogg = EJ_Data:CreateEncounter();
adarogg:setAttributes("Adarogg", "Ragefire Chasm's trogg population has rapidly declined in recent months for one reason: Adarogg. This ravenous flame hound was among the first of his kind ripped from the Firelands by dark shaman. Adarogg's handlers feed the unruly beast over twice his weight in trogg flesh per day to keep him appeased.", 0.69273, 0.650206, 226, 1443, 1, 5961, 213, 4);
adarogg:setLoot({}); 
instance:addEncounter(adarogg); 

local dark_shaman_koranthal = EJ_Data:CreateEncounter();
dark_shaman_koranthal:setAttributes("Dark Shaman Koranthal", "Koranthal has always believed that brute force is the only way to control Azeroth's elementals. His extreme views led him to join the ranks of the sinister Twilight's Hammer. When the cult fell, the orc and other like-minded shaman secretly infiltrated Ragefire Chasm to continue practicing their dark arts.", 0.540467, 0.300412, 226, 1444, 2, 5963, 213, 4);
dark_shaman_koranthal:setLoot({}); 
instance:addEncounter(dark_shaman_koranthal); 

local slagmaw = EJ_Data:CreateEncounter();
slagmaw:setAttributes("Slagmaw", "Unlike other lava worms enslaved by the dark shaman, Slagmaw has proven to be nearly impossible to control. The beast lives to dig through the depths of the earth, and it cares nothing for the consequences of its actions, or the damage it causes to anyone who stands in its way.", 0.40878, 0.574074, 226, 1445, 3, 5965, 213, 4);
slagmaw:setLoot({});
instance:addEncounter(slagmaw); 

local lava_guard_gordoth = EJ_Data:CreateEncounter();
lava_guard_gordoth:setAttributes("Lava Guard Gordoth", "Hubris drove the brilliant shaman Gordoth to act as a living conduit for energies pulled from the Firelands. He and his allies had hoped to mimic the creation of elemental ascendants in the Twilight's Hammer cult. Instead, the explosive influx of power drove Gordoth insane and mutated his body into a hideous form.", 0.342936, 0.816872, 226, 1446, 4, 5967, 213, 4);
lava_guard_gordoth:setLoot({}); 
instance:addEncounter(lava_guard_gordoth); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);