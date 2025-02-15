	object_const_def
	const ECRUTEAKITEMFINDERHOUSE_COOLTRAINER_M
	const ECRUTEAKITEMFINDERHOUSE_POKEDEX

EcruteakItemfinderHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakItemfinderGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .itemfinder
	writetext EcruteakItemfinderAdventureText
	yesorno
	iffalse .no
	writetext EcruteakItemfinderTrueSpiritText
	promptbutton
	verbosegiveitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
.itemfinder:
	writetext ItemfinderExplanationText
	waitbutton
	closetext
	end

.no:
	writetext EcruteakItemfinderToEachHisOwnText
	waitbutton
	closetext
	end

EcruteakHistoryBook:
	opentext
	writetext EcruteakHistoryBookText
	yesorno
	iftrue .ReadBook
	closetext
	end

.ReadBook:
	writetext EcruteakTwoTowersText
	yesorno
	iftrue .KeepReading
	closetext
	end

.KeepReading:
	writetext EcruteakThreeMonText
	waitbutton
	closetext
	end

ItemFinderHouseRadio:
	jumpstd Radio2Script

EcruteakItemfinderAdventureText:
	text "Ah. You're on an"
	line "adventure with"
	cont "your #mon?"

	para "Well, what's an"
	line "adventure without"
	cont "treasure hunting?"

	para "Am I right, or am"
	line "I right?"
	done

EcruteakItemfinderTrueSpiritText:
	text "Good! You under-"
	line "stand the true"

	para "spirit of adven-"
	line "ture."

	para "I like that! Take"
	line "this with you."
	done

ItemfinderExplanationText:
	text "There are many"
	line "items lying about"

	para "that aren't ob-"
	line "vious."

	para "Use the Dowsing"
	line "MCHN to check if"

	para "there's an item"
	line "on the ground"
	cont "near you."

	para "It doesn't show"
	line "the exact spot,"

	para "so you'll have to"
	line "look yourself."

	para "Oh yeah--I heard"
	line "there are items"

	para "in Ecruteak's"
	line "Burned Tower."
	done

EcruteakItemfinderToEachHisOwnText:
	text "Oh… To each his"
	line "own, I suppose…"
	done

EcruteakHistoryBookText:
	text "History of"
	line "Ecruteak"

	para "Want to read it?"
	done

EcruteakTwoTowersText:
	text "In Ecruteak, there"
	line "were two towers."

	para "Each tower was the"
	line "roost of powerful"
	cont "flying #mon."

	para "But one of the"
	line "towers burned to"
	cont "the ground."

	para "The two #mon"
	line "haven't been seen"
	cont "since…"

	para "Keep reading?"
	done

EcruteakThreeMonText:
	text "Ecruteak was also"
	line "home to three"

	para "#mon that raced"
	line "around the town."

	para "They were said to"
	line "have been born of"

	para "water, lightning"
	line "and fire."

	para "But they could not"
	line "contain their"
	cont "excessive power."

	para "So they say the"
	line "three ran like the"

	para "wind off into the"
	line "grassland."
	done

EcruteakItemfinderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 11
	warp_event  4,  7, ECRUTEAK_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ItemFinderHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakItemfinderGuy, -1
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook, -1
