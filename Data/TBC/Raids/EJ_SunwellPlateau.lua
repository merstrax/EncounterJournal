local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-SunwellPlateau.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-SunwellPlateau.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-SunwellPlateau.blp";

instance:setAttributes(752, "Sunwell Plateau", EJ_Descriptions.Instances["SUNWELLPLATEAU"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local kalecgos = EJ_Data:CreateEncounter();
kalecgos:setAttributes("Kalecgos", "", 752, 724, 0, 8);
kalecgos:setLoot({}); 
instance:addEncounter(kalecgos);

local brutallus = EJ_Data:CreateEncounter();
brutallus:setAttributes("Brutallus", "", 752, 725, 1, 8);
brutallus:setLoot({}); 
instance:addEncounter(brutallus);

local felmyst = EJ_Data:CreateEncounter();
felmyst:setAttributes("Felmyst", "", 752, 726, 2, 8);
felmyst:setLoot({}); 
instance:addEncounter(felmyst);

local the_eredar_twins = EJ_Data:CreateEncounter();
the_eredar_twins:setAttributes("The Eredar Twins", "",  752, 727, 3, 8);
the_eredar_twins:setLoot({}); 
instance:addEncounter(the_eredar_twins);

local m_uru = EJ_Data:CreateEncounter();
m_uru:setAttributes("M'uru", "", 752, 728, 4, 8);
m_uru:setLoot({}); 
instance:addEncounter(m_uru);

local kil_jaeden = EJ_Data:CreateEncounter();
kil_jaeden:setAttributes("Kil'jaeden", "", 752, 729, 5, 8);
kil_jaeden:setLoot({}); 
instance:addEncounter(kil_jaeden);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, true);