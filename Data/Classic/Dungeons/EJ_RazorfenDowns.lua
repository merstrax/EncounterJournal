local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-RazorfenDowns.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-RazorfenDowns.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-RazorfenDowns.blp";

instance:setAttributes(233, "Razorfen Downs", EJ_Descriptions.Instances["RAZORFENDOWNS"], 129, bgFile, btnFile, 0, loreFile, EJ_Data.Normal);

local mordresh_fire_eye = EJ_Data:CreateEncounter();
mordresh_fire_eye:setAttributes("Mordresh Fire Eye", "Through necromantic magic Death Speaker Blackthorn was able to rekindle the flames of Mordresh Fire Eye's soul, returning him to undeath. As a former shaman, Mordresh has exerted his twisted control over the elements.  He burns and scorches all those who threaten the Death Speaker's work.", 0.860656, 0.467213, 233, 1663, 2, 4767, 300, 2);
mordresh_fire_eye:setLoot({});

local amnennar_the_coldbringer = EJ_Data:CreateEncounter();
amnennar_the_coldbringer:setAttributes("Amnennar the Coldbringer", "The lich Amnennar was once a force of reckoning within the Scourge, participating in the assault on Mount Hyjal during the Third War. Afterward, the Lich King instructed his servant to remain in Kalimdor and expand the Scourge's influence. This effort was thwarted by heroes of the Horde and Alliance, however. Now the relative peace that has been brought to Razorfen Downs may be threatened. Death Speaker Blackthorn hopes to revive this powerful lich and renew the assault on the Barrens.", 0.45509, 0.582335, 233, 1666, 5, 9484, 300, 4);
amnennar_the_coldbringer:setLoot({}); 

local aarux = EJ_Data:CreateEncounter();
aarux:setAttributes("Aarux", "The Arachnomancers of the Death's Head cult are particularly proud of their efforts.  After many failed attempts they have finally created a suitable guardian for Death Speaker Blackthorn.  Aarux is a huge spider whose body bristles with toxin filled pustules that burst and ooze noxious liquids.  The Arachnomancers now await the opportune moment to unleash their creation.", 0.58982, 0.342815, 233, 1662, 1, 9491, 300, 4);
aarux:setLoot({}); 

local mushlump = EJ_Data:CreateEncounter();
mushlump:setAttributes("Mushlump", "A recent creation of Death Speaker Blackthorn, Mushlump is a grotesque collection of parts collected from other failed creations.  Full of bile, pus, and other noxious humors, Mushlump contaminates the halls leading to Death Speaker Blackthorn.", 0.34531, 0.664671, 233, 1664, 3, 9496, 300, 4);
mushlump:setLoot({}); 

local death_speaker_blackthorn = EJ_Data:CreateEncounter();
death_speaker_blackthorn:setAttributes("Death Speaker Blackthorn", "Death Speaker Blackthorn rose quickly through the ranks of the Death's Head cult after the defeat of Amnennar the Coldbringer. Shortly after usurping control of the cult, Blackthorn began receiving dark whispers. These whispers promised power and riches beyond belief, if he could return Amnennar to life. Compelled by unnatural energies, Blackthorn discovered the location of Amnennar's Phylactery and has returned to Razorfen Downs to complete the ritual that will return his former master to life once more.", 0.43014, 0.627246, 233, 1665, 4, 9523, 300, 4);
death_speaker_blackthorn:setLoot({}); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);