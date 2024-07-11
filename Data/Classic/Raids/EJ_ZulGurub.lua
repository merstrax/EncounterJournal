local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ZulGurub.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ZulGurub.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ZulGurub.blp";

instance:setAttributes(77, "Zul'Gurub", EJ_Descriptions.Instances["ZULGURUB"], 333, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local high_priestess_jeklik = EJ_Data:CreateEncounter();
high_priestess_jeklik:setAttributes("High Priestess Jeklik", "", 76, 11780, 1, 8);
high_priestess_jeklik:setLoot({19918,19928,20262,20265,19923,19920,19915,22721,22722,22711,22712,22720,22716,22718,22715,22714,22713}); 
instance:addEncounter(high_priestess_jeklik);

local high_priest_venoxis = EJ_Data:CreateEncounter();
high_priest_venoxis:setAttributes("High Priest Venoxis", "", 76, 11781, 2, 8);
high_priest_venoxis:setLoot({19904,19903,19907,19906,19905,19900,22721,22722,22711,22712,22720,22716,22718,22715,22714,22713}); 
instance:addEncounter(high_priest_venoxis);

local high_priestess_marli = EJ_Data:CreateEncounter();
high_priestess_marli:setAttributes("High Priestess Mar'li", "", 76, 11782, 3, 8);
high_priestess_marli:setLoot({20032,19927,19919,19871,19925,19930,22721,22722,22711,22712,22720,22716,22718,22715,22714,22713}); 
instance:addEncounter(high_priestess_marli);

local bloodlord_mandokir = EJ_Data:CreateEncounter();
bloodlord_mandokir:setAttributes("Bloodlord Mandokir", "", 76, 11783, 4, 8);
bloodlord_mandokir:setLoot({19867,19866,19874,20038,19872,19870,19895,19869,19877,19878,19873,19893,19863}); 
instance:addEncounter(bloodlord_mandokir); 

local edge_of_madness_gri_lek = EJ_Data:CreateEncounter();
edge_of_madness_gri_lek:setAttributes("Edge of Madness - Gri'lek", "", 76, 11784, 5, 8);
edge_of_madness_gri_lek:setLoot({19961,19962}); 
instance:addEncounter(edge_of_madness_gri_lek); 

local edge_of_madness_hazza_rah = EJ_Data:CreateEncounter();
edge_of_madness_hazza_rah:setAttributes("Edge of Madness - Hazza'rah", "", 76, 11785, 6, 8);
edge_of_madness_hazza_rah:setLoot({19968,19967}); 
instance:addEncounter(edge_of_madness_hazza_rah); 

local edge_of_madness_renataki = EJ_Data:CreateEncounter();
edge_of_madness_renataki:setAttributes("Edge of Madness - Renataki", "", 76, 11786, 7, 8);
edge_of_madness_renataki:setLoot({19964,19963}); 
instance:addEncounter(edge_of_madness_renataki); 

local edge_of_madness_wushoolay = EJ_Data:CreateEncounter();
edge_of_madness_wushoolay:setAttributes("Edge of Madness - Wushoolay", "", 76, 11787, 8, 8);
edge_of_madness_wushoolay:setLoot({19965,19993}); 
instance:addEncounter(edge_of_madness_wushoolay);

local gahzranka = EJ_Data:CreateEncounter();
gahzranka:setAttributes("Gahz'ranka", "", 76, 11788, 9, 8);
gahzranka:setLoot({19945,19944,19947,19946}); 
instance:addEncounter(gahzranka);

local high_priest_thekal = EJ_Data:CreateEncounter();
high_priest_thekal:setAttributes("High Priest Thekal", "", 76, 11789, 10, 8);
high_priest_thekal:setLoot({19897,19896,19902,19898,19899,20260,20266,19901,22721,22722,22711,22712,22720,22716,22718,22715,22714,22713}); 
instance:addEncounter(high_priest_thekal); 

local high_priestess_arlokk = EJ_Data:CreateEncounter();
high_priestess_arlokk:setAttributes("High Priestess Arlokk", "", 76, 11790, 11, 8);
high_priestess_arlokk:setLoot({19910,19909,19913,19912,19922,19914,22721,22722,22711,22712,22720,22716,22718,22715,22714,22713});
instance:addEncounter(high_priestess_arlokk); 

local jin_do_the_hexxar = EJ_Data:CreateEncounter();
jin_do_the_hexxar:setAttributes("Jin'do the Hexxer", "", 76, 11791, 12, 8);
jin_do_the_hexxar:setLoot({19885,19891,19890,19884,19888,19886,19929,19889,19892,19875,19887,19894});
instance:addEncounter(jin_do_the_hexxar);

local hakkar = EJ_Data:CreateEncounter();
hakkar:setAttributes("Hakkar", "", 76, 11791, 12, 8);
hakkar:setLoot({19857,20257,20264,19855,19876,19856,19859,19864,19865,19854,19852,19862,19853,19861});
instance:addEncounter(hakkar); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);