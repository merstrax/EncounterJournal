local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-SunkenTemple.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-SunkenTemple.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-SunkenTemple.blp";

instance:setAttributes(237, "The Temple of Atal'hakkar", EJ_Descriptions.Instances["SUNKENTEMPLE"], 109, bgFile, btnFile, 0, loreFile, EJ_Data.Normal);

local avatar_of_hakkar = EJ_Data:CreateEncounter();
avatar_of_hakkar:setAttributes("Avatar of Hakkar", "Hakkar was notorious for demanding sacrifices from his followers. Many millennia ago, he instructed the Atal'ai to bring forth his avatar, using blood ritually drained from living victims to feed him. The Atal'ai priests now seek to raise Hakkar's avatar with a modified version of this ritual, one that involves sacrificing green dragons. If the Atal'ai succeed, the re-emergence of Hakkar's avatar could spell doom for Azeroth.", 0.243169, 0.459016, 237, 492, 1, 4903, 220, 2);
avatar_of_hakkar:setLoot({}); 

local jammal_an_the_prophet = EJ_Data:CreateEncounter();
jammal_an_the_prophet:setAttributes("Jammal'an the Prophet", "Jammal'an is the current leader of the Atal'ai, the extremist sect of priests who fanatically worship Hakkar. While in deep meditation, Jammal'an received instructions on how to resurrect Hakkar by using the blood of his draconic foes, the green dragonflight. Jammal'an and his undead bodyguard Ogom the Wretched stand ready to oppose any who would prevent Hakkar's return, though the prophet's actions may unleash upon Azeroth an even more terrible force: the Emerald Nightmare.", 0.760929, 0.459016, 237, 488, 2, 4934, 220, 2);
jammal_an_the_prophet:setLoot({}); 

local wardens_of_the_dream = EJ_Data:CreateEncounter();
wardens_of_the_dream:setAttributes("Wardens of the Dream", "Four promising young drakes accompanied Eranikus into the Temple of Atal'Hakkar, eager to prove themselves by serving a great and powerful wyrm. One by one, they were captured and tainted by the Emerald Nightmare, and they now wander the halls of the Sunken Temple, lashing out at all who intrude upon their waking dream.", 0.499151, 0.870309, 237, 0, 3, 6114, 220, 2);
wardens_of_the_dream:setLoot({}); 

local shade_of_eranikus = EJ_Data:CreateEncounter();
shade_of_eranikus:setAttributes("Shade of Eranikus", "Eranikus, former consort to Ysera the Dreamer, was sent to guard the ruins of Atal'Hakkar and prevent Hakkar's emergence. Once within the temple, he and his retinue were corrupted by its dark forces, and he became a shade, pulled between the realms of the Emerald Dream and the physical plane. Despite his corruption, Eranikus may still call upon his powers as a green dragon to spew corrosive acid at his enemies or trap them in a deep slumber.", 0.670765, 0.877049, 237, 493, 7, 4950, 220, 2);
shade_of_eranikus:setLoot({}); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);