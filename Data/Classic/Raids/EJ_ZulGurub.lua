local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ZulGurub.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ZulGurub.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ZulGurub.blp";

instance:setAttributes(77, "Zul'Gurub", EJ_Descriptions.Instances["ZULGURUB"], 333, bgFile, btnFile, 0, loreFile, EJ_Data.Raid);

local high_priest_venoxis = EJ_Data:CreateEncounter();
high_priest_venoxis:setAttributes("High Priest Venoxis", "Originally sent to kill Hakkar, Venoxis became enslaved to the murderous entity before falling to Azeroth's heroes. Through the efforts of the Soulflayer's agents, Venoxis has been ripped from the spirit world and ordered to defend Zul'Gurub with his venomous serpentine minions.", 0.5099801, 0.53742516, 76, 1178, 1, 2787, 337, 8);
high_priest_venoxis:setLoot({}); 
instance:addEncounter(high_priest_venoxis); 

local bloodlord_mandokir = EJ_Data:CreateEncounter();
bloodlord_mandokir:setAttributes("Bloodlord Mandokir", "The infamous Bloodlord Mandokir died a torturous death before Bloodscalp trolls desecrated his body years ago. Word has now spread that Mandokir walks the jungles of Stranglethorn yet again, using the corpse of the mighty Bloodscalp chieftain Gan'zulah as a host for his malevolent spirit.", 0.60479087, 0.7994013, 76, 1179, 2, 2610, 337, 8);
bloodlord_mandokir:setLoot({}); 
instance:addEncounter(bloodlord_mandokir); 

local cache_of_madness_gri_lek = EJ_Data:CreateEncounter();
cache_of_madness_gri_lek:setAttributes("Cache of Madness - Gri'lek", "Among the hateful spirits in the Cache of Madness are Gri'lek, a dire troll stripped of his regenerative abilities by the loa; Renataki, an infamous and sadistic warrior; Hazza'rah, a seer tormented by dire future visions; and Wushoolay, a mighty combatant bristling with the powers of the storms.", 0.599801, 0.462575, 76, 788, 3, 2504, 337, 8);
cache_of_madness_gri_lek:setLoot({}); 
instance:addEncounter(cache_of_madness_gri_lek); 

local cache_of_madness_hazza_rah = EJ_Data:CreateEncounter();
cache_of_madness_hazza_rah:setAttributes("Cache of Madness - Hazza'rah", "Among the hateful spirits in the Cache of Madness are Gri'lek, a dire troll stripped of his regenerative abilities by the loa; Renataki, an infamous and sadistic warrior; Hazza'rah, a seer tormented by dire future visions; and Wushoolay, a mighty combatant bristling with the powers of the storms.", 0.6367, 0.462575, 76, 788, 4, 3508, 337, 8);
cache_of_madness_hazza_rah:setLoot({}); 
instance:addEncounter(cache_of_madness_hazza_rah); 

local cache_of_madness_renataki = EJ_Data:CreateEncounter();
cache_of_madness_renataki:setAttributes("Cache of Madness - Renataki", "Among the hateful spirits in the Cache of Madness are Gri'lek, a dire troll stripped of his regenerative abilities by the loa; Renataki, an infamous and sadistic warrior; Hazza'rah, a seer tormented by dire future visions; and Wushoolay, a mighty combatant bristling with the powers of the storms.", 0.599801, 0.51497, 76, 788, 5, 2501, 337, 8);
cache_of_madness_renataki:setLoot({}); 
instance:addEncounter(cache_of_madness_renataki); 

local cache_of_madness_wushoolay = EJ_Data:CreateEncounter();
cache_of_madness_wushoolay:setAttributes("Cache of Madness - Wushoolay", "Among the hateful spirits in the Cache of Madness are Gri'lek, a dire troll stripped of his regenerative abilities by the loa; Renataki, an infamous and sadistic warrior; Hazza'rah, a seer tormented by dire future visions; and Wushoolay, a mighty combatant bristling with the powers of the storms.", 0.601905, 0.414711, 76, 788, 6, 2498, 337, 8);
cache_of_madness_wushoolay:setLoot({}); 
instance:addEncounter(cache_of_madness_wushoolay); 

local high_priestess_kilnara = EJ_Data:CreateEncounter();
high_priestess_kilnara:setAttributes("High Priestess Kilnara", "When High Priestess Arlokk was killed, the panther loa Bethekk chose her sister, Kilnara, as her new mortal champion. Supporting the recent pact between the Gurubashi and Zandalar tribes, Kilnara has unleashed her savage panther minions on the region's unsuspecting denizens.", 0.48003995, 0.20059872, 76, 1180, 7, 2692, 337, 8);
high_priestess_kilnara:setLoot({}); 
instance:addEncounter(high_priestess_kilnara); 

local zanzil = EJ_Data:CreateEncounter();
zanzil:setAttributes("Zanzil", "Exiled from the Skullsplitter tribe for turning his fellow trolls into mindless slaves, Zanzil was recently offered a place among the Gurubashi by Jin'do the Godbreaker in exchange for bolstering Zul'Gurub's forces. It is well-known that his toxic elixirs can even rouse the dead from their graves.", 0.31733844, 0.24550891, 76, 1181, 8, 2508, 337, 8);
zanzil:setLoot({}); 
instance:addEncounter(zanzil); 

local jin_do_the_godbreaker = EJ_Data:CreateEncounter();
jin_do_the_godbreaker:setAttributes("Jin'do the Godbreaker", "After his defeat in Zul'Gurub, Jin'do's spirit was tormented by his failure to serve Hakkar's wishes. Jin'do recently found a way back into the world and enslaved the Soulflayer. Bristling with the dread god's terrible powers, Jin'do plans to restore the Gurubashi empire to its former glory.", 0.48502997, 0.39520955, 76, 1182, 9, 2899, 337, 8);
jin_do_the_godbreaker:setLoot({});
instance:addEncounter(jin_do_the_godbreaker); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);