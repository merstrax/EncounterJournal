local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CavernsOfTime.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CavernsOfTime.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CavernsOfTime.blp";

instance:setAttributes(255, "The Black Morass", EJ_Descriptions.Instances["THEBLACKMORASS"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);
instance.hsHeroicLoot = true;

local chrono_lord_deja = EJ_Data:CreateEncounter();
chrono_lord_deja:setAttributes("Chrono Lord Deja", "The Infinite Dragonflight tempted many drakonid with promises of power, but most found only servitude and despair. One of the few exceptions is Chrono Lord Deja, who gained influence within the flight through his raw power and cunning.", 255, 1920, 1, 4);
chrono_lord_deja:setLoot({});
chrono_lord_deja:setLoot({}, true);
instance:addEncounter(chrono_lord_deja);

local temporus = EJ_Data:CreateEncounter();
temporus:setAttributes("Temporus", "Although relatively young, Temporus was instrumental in identifying many of the Infinite Dragonflight's prime targets.  As a reward, he was given the responsibility of destroying anyone who might attempt to interfere with the dragonflight's plans.", 255, 1921, 2, 4);
temporus:setLoot({});
temporus:setLoot({}, true);
instance:addEncounter(temporus);

local aeonus = EJ_Data:CreateEncounter();
aeonus:setAttributes("Aeonus", "Powerful and wild, Aeonus was tasked by the Master of the Infinite Dragonflight to personally oversee the disruption of key moments in the true timeway.", 255, 1919, 3, 4);
aeonus:setLoot({});
aeonus:setLoot({}, true);
instance:addEncounter(aeonus);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Dungeons);