local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the humble supplier for distance fighting weapons of the Ironhouse, owned by Abran Ironeye."})
keywordHandler:addKeyword({'fletcher'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the humble supplier for distance fighting weapons of the Ironhouse, owned by Abran Ironeye."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "People call me Xed, but my full name is Xedem."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know, maybe what you really need is a watch."})
keywordHandler:addKeyword({'hurt'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Go to a priest. I am sure they will fix you up."})
keywordHandler:addKeyword({'Abran Ironeye'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is the owner of this market, although - just between you and me - I'm not so sure he's honest."})
keywordHandler:addKeyword({'honest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I overheard the boss discussing some shady deals with a man in a black cloak."})
keywordHandler:addKeyword({'shady deals'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Something about a sword only great warlords can use and a rare distance fighting item."})
keywordHandler:addKeyword({'rare distance'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, but I believe this is nothing but lies seeing that there are only a few distance fighting weapons."})
keywordHandler:addKeyword({'amazon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are a band or tribe of strange women that have nothing in common with civilized men like me."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You must be talking of the great general Benjamin. He saved the kingdom from ferumbras you know."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We supply the archers of the army with distance fighting weapons."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard rumours somewhere that his father was called Hugo."})
keywordHandler:addKeyword({'xed'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yeah, nice name, eh?"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think that was the sword they were talking about. Said something about a man in Edron that could get it for him."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some people say Ferumbras isn't really dead. Crazy kids!"})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell items of the distance type."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yeah, these awful beasts. They live in the swamps near the city and in dark dungeons."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, they are all over. You never see more of them than in Kaz, though."})
keywordHandler:addKeyword({'kaz'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, that's short for Kazordoon."})

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'arrow'}, 					Cfarrow, 3)
shopModule:addBuyableItem({'power bolt'}, 					Cfpowerbolt, 7)
shopModule:addBuyableItem({'bow'}, 					Cfbow, 400)
shopModule:addSellableItem({'bow'}, 					Cfbow, 100)
shopModule:addBuyableItem({'bolt'}, 					Cfbolt, 4)
shopModule:addBuyableItem({'crossbow'}, 					Cfcrossbow, 500)
shopModule:addSellableItem({'crossbow'}, 					Cfcrossbow, 500)
shopModule:addBuyableItem({'spear'}, 					Cfspear, 9)

npcHandler:addModule(FocusModule:new())