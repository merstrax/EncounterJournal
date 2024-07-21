local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-SunwellPlateau.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-SunwellPlateau.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-SunwellPlateau.blp";

instance:setAttributes(752, "Sunwell Plateau", EJ_Descriptions.Instances["SUNWELLPLATEAU"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local kalecgos = EJ_Data:CreateEncounter();
kalecgos:setAttributes("Kalecgos", "", 752, 724, 0, 8);
kalecgos:setLoot({34170,34386,34169,34384,34168,34167,34382,34166,34165,34164,34848});
instance:addEncounter(kalecgos);

local brutallus = EJ_Data:CreateEncounter();
brutallus:setAttributes("Brutallus", "", 752, 725, 1, 8);
brutallus:setLoot({34181,34180,34381,34178,34177,34179,34176,34853});
instance:addEncounter(brutallus);

local felmyst = EJ_Data:CreateEncounter();
felmyst:setAttributes("Felmyst", "", 752, 726, 2, 8);
felmyst:setLoot({34352,34188,34385,34186,34383,34184,34185,34182,34856});
instance:addEncounter(felmyst);

local the_eredar_twins = EJ_Data:CreateEncounter();
the_eredar_twins:setAttributes("The Eredar Twins", "",  752, 727, 3, 8);
the_eredar_twins:setLoot({34205,34190,34210,34202,34393,34209,34391,34195,34392,34194,34208,34390,34192,34388,34193,34389,35290,35291,35292,34204,34189,34206,34197,34199,34203,34198,34196});
instance:addEncounter(the_eredar_twins);

local m_uru = EJ_Data:CreateEncounter();
m_uru:setAttributes("M'uru", "", 752, 728, 4, 8);
m_uru:setLoot({34232,34233,34399,34212,34398,34211,34397,34234,34408,34229,34396,34228,34215,34394,34240,34216,34395,34213,34230,35282,35283,35284,34427,34430,34429,34428,34214,34231});
instance:addEncounter(m_uru);

local kil_jaeden = EJ_Data:CreateEncounter();
kil_jaeden:setAttributes("Kil'jaeden", "", 752, 729, 5, 8);
kil_jaeden:setLoot({34241,34242,34339,34405,34340,34342,34406,34344,34244,34404,34245,34403,34333,34332,34402,34343,34243,34401,34345,34400,34341,34334,34329,34247,34335,34331,34336,34337});
instance:addEncounter(kil_jaeden);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Raids, 9);