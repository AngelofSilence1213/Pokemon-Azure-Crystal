AlanAnswerPhoneText:
	text "Yup, it's @"
	text_ram wStringBuffer3
	text "!"

	para "Is this <PLAY_G>?"
	line "Good morning!"
	done

AlanAnswerPhoneDayText:
	text "Yup, it's @"
	text_ram wStringBuffer3
	text "!"

	para "Is that <PLAY_G>?"
	done

AlanAnswerPhoneNiteText:
	text "Yup, it's @"
	text_ram wStringBuffer3
	text "!"

	para "Is that <PLAY_G>?"
	line "Good evening!"
	done

AlanGreetText:
AlanGreetDayText:
AlanGreetNiteText:
	text "Hello! It's me,"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

AlanGenericText:
	text "<PLAY_G>, are you"
	line "raising your"
	cont "#mon properly?"

	para "I read in a book"
	line "that you should"

	para "raise any #mon"
	line "you catch with"
	cont "love and care."
	done
