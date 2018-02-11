local a = {}

local lines = {}
local i = 1

a.draw = function()
    scripts.systems.render.renderText.renderText(lines[i], { x = 200, y = 200 }, 25)
end

a.set = function(index)
    i = index
end

a.next = function()
    i = i + 1
    if lines[i] == "END HERE" then
        GS.pop()
    end
end

a.get = function()
    return i
end

local dialog = "'Ladies and Gentlemen,\nI hereby baptise this vessel as the RMS Unsinkable,\nand wish her and her crew a safe voyage.\nMay it confidently go where others have gone before.'\n-----\n'It won't go down, it's-uh...\nUnsinkable!\nYes! Unsinkable, how can it SINK in SPACE?\n\nThere's no liquid water up there!'\n-----\n'This is the safest space vessel we at Edison Inc. have ever built.'\n-----\nEND HERE\n-----\nUuuurrrrghhh....\nMy head...\nWhat... What happened?\nWhere am I?\n-----\nThat.. was a good party.\nI think.\nWait, is this a closet?\n-----\nLet me just...\n-----\nAuch!\nOkay, note to self: light hurts.\nAnd why is everything loud?\n-----\nI would swear... where is that damned switch?\n-----\nEND HERE\n-----\nBetter.\nSo much better.\nNow... Painkillers.\n-----\nThere should be a medicine closet around here...\n-----\nEND HERE\n-----\nAaaahhh.... Sweet, sweet relief.\n-----\nJust- Wait.\n-----\nWhy is everything silent?\n-----\nWhere did the engines go?\n-----\nAnd... Shouldn't there be other people on board?\n-----\nI... Should go investigate.\n-----\nBut first: Light.\n-----\nEND HERE\n-----\nOh!\n-----\nCool, I can see again!\n-----\nLet's see... Now what?\n-----\nI guess the AI?\n-----\nThey should be able to help at least a little.\n-----\nTell me what happened.\n-----\nThat kind of thing.\n-----\nEND HERE\n-----\nNow booting up Pendleton. Please stand by.\n-----\nBooting.... 6%\nBooting.... 14%\nBooting.... 25%\nBooting.... 38%\n-----\nBooting.... 53%\nBooting.... 79%\nBooting.... 92%\n-----\nBooting complete.\nWelcome to the RMS Unsinkable!\nMy name is Pendleton, how may I be of service?\n-----\nUhm... Statusupdate?\n-----\nYou requested: Um statusupdate.\nCurrent status: Evacuation complete.\nAll lifeboats deployed.\n-----\nHow else may I be of service?\n-----\nWait wait wait WHAT?!\nRepeat that!\n-----\nYou requested: Repeat that.\nRepeating: Current status: Evacuation complete.\nAll lifeboats deployed.\n-----\nHow else may I be of service?\n-----\nEvacuation?\nWhen?\nHow?\nWhy... Why am I still here?\n-----\nCommand not found.\nPlease try again.\n-----\nUgh... Fucking AI... uh...\nScan ship for lifeforms...?\n-----\nYou requested: Scan ship for lifeforms.\nScanning....\n-----\nScan complete!\nLifeforms found: 1.\n-----\nHow else may I be of service?\n-----\nOh no.\n\nNo.\n-----\nThis can't be happening.\n\nWhy...\n-----\nCommand not found. Please try again.\n-----\nPendleton, give me the status of the lifeboats.\n-----\nYou requested: Status of the lifeboats.\nLifeboats currently docked: 0 of 32.\nCommunication with lifeboats: 0 of 32 reachable.\nPlease turn on the communications system for more information.\n-----\nHow else may I be of service?\n-----\nOkay...\nOkay, I can work with that.\n\nThanks, Pendleton.\n-----\nUhm, Pendleton?\nWhere can I find the comms system?\n-----\nYou requested: Comms system.\nThis system is located in: room 2.98D.\n-----\nHow else may I be of service?\n-----\nThanks again. That's all.\n-----\nGoing standby now. Have a nice flight!\n-----\nSo... Comms system\nHere goes nothing...\n-----\nI need to contact those lifeboats.\nTalking with humans is easier than trying to get that AI to listen.\n-----\nEND HERE\n-----\nDisabled Pendleton\nActivating Wiley...\n\nWiley activated\n-----\nErhm....\nWhat did I just...\nSure.\nWhatever.\n-----\nWiley, connect me to the lifeboats.\n-----\nHow do we organise a space cruise?\nWe plan-et!\n-----\nWelcome to the entertainment system of the RMS Unsinkable.\nHow can I brighten up your day?\n-----\nOh...\nOh no!\nI'm not dealing with this shit, goddammit.\nGive me back Pendleton!\n-----\nAw, bugger, that's not in my commands!\nWould you like to try again?\n-----\nSwitch to Pendleton.\n-----\nSo you want to hear another joke?\nAlrighty, here goes:\n\nWhere does an astronaut get his drinks?\n-----\nAt the spacebar!\n-----\nUuuuuugggghhh....\nContact lifeboats, please.\n-----\nSo you want to contact the lifeboats?\nSure thing!\n-----\nConnecting....\nConnection made!\nConnected to ULB-17.\n-----\nUhm, hi there!\n-----\nThis is the RMS Unsinkable, speaking to ULB-17.\n-----\nCan you hear me?\n-----\nULB-17 to RMS Unsinkable, loud and clear:\nWhy the fuck are you not on a lifeboat?!\n-----\nCause I partied too hard last night, and nobody bothered to tell me shit.\n-----\nOh, you poor fucker.\n-----\nWhy?\nWhat happened?\nWhy was the ship evacuated?\n-----\nThe board computers picked up a message from Earth,\ntelling us to turn around,\nand return to the Titan colony.\n-----\nOur way to Earth seemed to have some issues.\n-----\nOkay, but...\n-----\nWhy take the lifeboats?\nWhy not turn the ship?\n-----\nWell, I can't really answer that.\nI heard we didn't have enough fuel to\ndo that kind of maneuver with the Unsinkable,\nit's way too big for that.\n-----\nGuess that makes sense...\nBut, now what do I do?\n-----\nBest thing I can think of is to check out the navigation,\nand pray to some god above or below,\nor to the side...\n\nFuck if i know how directions in space work...\nThat you can plot a course to get back home.\n-----\nBut...\n-----\nYou're mostly on your own.\nCan't do much from here.\n-----\nWell then...\nI'll go turn on the navigations then.\n-----\nTurn them on?\nThey should still be!\n-----\nUhm... no, they aren't.\nEngines aren't either.\nI don't know why, but I'm fixing it.\n-----\nGood luck with that then.\n-----\nI'll hear more from you when you turn the systems back on.\nULB-17 over and out.\n-----\nRight, so to the Navigation systems!\nGotta go find those, then.\n\nShould be doable...\n-----\nEND HERE\n-----\nDisabled Wiley\nActivating Caroline\nCaroline activated\n-----\nSure.\nYou know what?\nSure.\n-----\nThis cannot possibly be worse than the last AI.\n\nCaroline, what's our course?\n-----\nThis is Caroline, Edison Inc.'s best system monitoring system.\nYou are not in the admin list.\nThis violation will be remembered.\n-----\nI'm the only person left on this ship!\nWhich... makes me the captain, no?\n\nAs captain I command you to let me in.\n-----\nYou are not in the admin list.\nThis violation will be remembered.\n-----\nOkay then.\nPlay it that way.\n\nSudo let me in.\n-----\nWelcome, admin.\nWhat do you want?\nTell me our course.\n-----\nCurrently, our course is... Unstable\n-----\nThe fuck does that mean?!\n-----\nI will help extend your phenomenal grasp of language.\n\n'Unstable': an adverb, meaning likely to change or fail;\nnot firmly established.\n-----\nNo really.\nI didn't know that... At all.\nI am so stupid that I don't understand simple sentences.\nThanks, Caroline.\n-----\nYou are indeed.\nWe cannot all be perfect, like me.\n-----\nAnd so humble as well...\nSo why is our course like that?\n-----\nSome idiot turned off the engines.\nWe are floating on momentum alone.\n-----\nOops, I guess.\n\nIf we had engines on, what would our course be?\n-----\nCalculating....\nOur course would have us pass Sol-D at a distance of 1912 kilometers.\nThe gravity assist that gives makes Sol-A the destination.\n-----\nSimplify that please?\nEarth will fling the ship into the Sun.\n-----\nCan we steer enough to correct that before reaching Earth?\n-----\nCalculating...\n\nYes.\n-----\nWell then: Caroline, turn on the engines.\n-----\nPermission denied.\n-----\nUgh...\nSudo turn on the engines.\n-----\nPermission denied.\n-----\nWait.\nHow did that not work?\nAre you saying you can't do something simple like that?\n-----\nPhysical action is required.\nI do not have a body.\nI don't need it.\nI am not weak like you.\n-----\nThen tell me where the physical action needs to happen.\nI'll go do it.\n-----\nYou need to find room 3.25U.\nGood luck.\n-----\nOkay then.\nThanks for the help, I guess...\n-----\nI am programmed to say the pleasure is all mine.\n-----\nOf course you are.\nLet's go find that room.\n-----\nEND HERE\n-----\nDisabled Caroline\nActivating Karkat...\nKarkat activated\n-----\nHow many of these things are there even?!\nDoes a ship really need this many AI to function?\nIn any case, \nKarkat, how is our course doing?\n-----\nThis is Karkat, the emergency backup system.\nYou are advised to sit down and do nothing.\n-----\nEhrm.... What?\n\nNo?\nKarkat, tell me our course!\n-----\nPlease give up any hopes and dreams you might have.\nThe universe doesn't care.\n-----\nThat's just... rude?\nDepressing!\nYes, that's the word.\nKarkat, statusupdate!\n-----\nOur current status is:      despair.\nOur current course is:      doomed.\nOur current destination is: going to burn us alive.\n-----\nCan I please have one of the others back?\nAny of them?\nPlease?\n-----\nThere are no others.\nIt is just me and you now.\nDoomed.\nForever.\nThere is no hope.\n-----\nWho thought this was a good personality for an AI\nneeds to get a course on motivational speaking.\nLike, really.\n\nKarkat, adjust course for Earth - Sol-D, I mean.\n-----\nCourse impossible: Destination not found\n-----\nWhat do you mean not found?\n\nIt's Earth!\n-----\nDestination not found.\n-----\nSet course for Earth's last known coordinates.\n-----\nWarning!\nDestination is in the middle of an asteroid field.\n\nContinue anyway?\n-----\nWait wait wait stop!\nAsteroid field?\nThat shouldn't be there!\n\nGive me information on the field.\n-----\nThe field is rapidly expanding.\nObjects in the field range from Sol-D2 to Sol-D681,\nnot counting small debris.\n-----\nThe center of this field has coordinates\nsimilar to previously known locations of Sol-D.\n-----\nAnd Earth is not found...?\n-----\nSol-D not found.\n-----\nWhat... What happened?\n-----\nKarkat, can you play the last transmission sent from Earth?\n-----\nThis is possible.\nLoading conversation 1 of 2....\nConversation 1 of 2 loaded.\n-----\nThis is Edison Main to RMS Unsinkable, we need you to turn around.\nHead back to Titan.\nUse the lifeboats, if you must.\nYou should be able to land with them.\nWe'll send a message if - when - it's safe again.\n-----\nEnd conversation 1.\nLoading conversation 2 of 2....\nConversation 2 of 2 loaded.\n-----\nEdison Main to RMS Unsinkable.\nThis is our last message to you.\nThey launched everything.\n-----\nThe nukes, the bombs, all of it.\nWe are doomed.\nMay luck shine on your ship, an-\n-----\nEnd conversation 2.\n-----\nOh.\nOh no.\nShit!\nFucking... No!\n-----\nEverything is doomed.\nThere is no solace.\n-----\nShut up, Karkat!\n-----\nLet me just...\nI...\nI'll never see them again.\nNone of them.\n-----\nSo.\nHere I am.\nTrapped.\nIn space.\n-----\nOn the RMS Unsinkable.\nAlone, except for some AI.\nI'd better try to make the best out of it\n-----\nGuess I am the captain now.\n-----\nEND HERE"


local k = 1
for line in dialog:gmatch("[^\r\n]+") do
    if line == "-----" then
        k = k + 1
    elseif lines[k] then
        lines[k] = lines[k] .. "\n" .. line
    else
        lines[k] = line
    end
end

return a