local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-RazorfenDowns.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-RazorfenDowns.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-RazorfenDowns.blp";

instance:setAttributes(233, "Razorfen Downs", EJ_Descriptions.Instances["RAZORFENDOWNS"], 129, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local tuten_kash = EJ_Data:CreateEncounter();
tuten_kash:setAttributes("Tuten'kash", "", 233, 1662, 1, 4);
tuten_kash:setLoot({10776,10777,10775});
instance:addEncounter(tuten_kash);

local mordresh_fire_eye = EJ_Data:CreateEncounter();
mordresh_fire_eye:setAttributes("Mordresh Fire Eye", "As a former shaman, Mordresh has exerted his twisted control over the elements.  He burns and scorches all those who threaten Amnennar's work.", 233, 1663, 2, 2);
mordresh_fire_eye:setLoot({10771,10769,10770});
instance:addEncounter(mordresh_fire_eye);

local glutton = EJ_Data:CreateEncounter();
glutton:setAttributes("Glutton", "Glutton is a grotesque collection of parts collected from other failed creations.  Full of bile, pus, and other noxious humors, Mushlump contaminates the halls leading to Amnennar the Coldbringer.", 233, 1664, 3, 4);
glutton:setLoot({10774,10772});
instance:addEncounter(glutton);

local ragglesnout = EJ_Data:CreateEncounter();
ragglesnout:setAttributes("Ragglesnout", "", 233, 1665, 4, 4);
ragglesnout:setLoot({10768,10758,10767});
instance:addEncounter(ragglesnout);

local amnennar_the_coldbringer = EJ_Data:CreateEncounter();
amnennar_the_coldbringer:setAttributes("Amnennar the Coldbringer", "The lich Amnennar was once a force of reckoning within the Scourge, participating in the assault on Mount Hyjal during the Third War. Afterward, the Lich King instructed his servant to remain in Kalimdor and expand the Scourge's influence. This effort was thwarted by heroes of the Horde and Alliance, however. Now the relative peace that has been brought to Razorfen Downs may be threatened.", 233, 1666, 5, 4);
amnennar_the_coldbringer:setLoot({10762,10765,10764,10763,10761});
instance:addEncounter(amnennar_the_coldbringer);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, EJ_Data.Dungeons, 9);