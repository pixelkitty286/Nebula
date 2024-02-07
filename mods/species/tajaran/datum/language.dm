/decl/language/tajaran // CG edit instead of purr it's mrowls and yowls
	name = LANGUAGE_SIIKMAAS
	desc = "The traditionally employed tongue of Ahdomai, composed of expressive yowls and chirps. Native to the Tajaran."
	speech_verb = "mrowls"
	ask_verb = "mrowls"
	exclaim_verb = "yowls"
	whisper_verb = "mrowls softly"
	key = "j"
	flags = LANG_FLAG_WHITELISTED
	shorthand = "TAJ"
	syllables = list("mrr","rr","tajr","kir","raj","kii","mir","kra","ahk","nal","vah","khaz","jri","ran","darr",
	"mi","jri","dynh","manq","rhe","zar","rrhaz","kal","chur","eech","thaa","dra","jurl","mah","sanu","dra","ii'r",
	"ka","aasi","far","wa","baq","ara","qara","zir","sam","mak","hrar","nja","rir","khan","jun","dar","rik","kah",
	"hal","ket","jurl","mah","tul","cresh","azu","ragh","mro","mra","mrro","mrra")

/decl/language/tajaran/get_random_name(gender, name_count=2, syllable_count=4, syllable_divisor=2)
	var/new_name = ..(gender,1)
	if(prob(70))
		new_name += " [pick(list("Hadii","Kaytam","Nazkiin","Zhan-Khazan","Hharar","Njarir'Akhan","Faaira'Nrezi","Rhezar","Mi'dynh","Rrhazkal","Bayan","Al'Manq","Mi'jri","Chur'eech","Sanu'dra","Ii'rka"))]"
	else
		new_name += " [..(gender,1)]"
	return new_name

/decl/language/tajaran/akhani
	name = LANGUAGE_AKHANI
	desc = "The language of the sea-faring Njarir'Akhan Tajaran. Borrowing some elements from Siik, the language is distinctly more structured."
	speech_verb = "chatters"
	ask_verb = "mrowls"
	exclaim_verb = "wails"
	whisper_verb = "chatters softly"
	key = "h"
	flags = LANG_FLAG_WHITELISTED
	shorthand = "AKH"
	syllables = list("mrr","rr","marr","tar","ahk","ket","hal","kah","dra","nal","kra","vah","dar","hrar", "eh",
	"ara","ka","zar","mah","ner","zir","mur","hai","raz","ni","ri","nar","njar","jir","ri","ahn","kha","sir",
	"kar","yar","kzar","rha","hrar","err","fer","rir","rar","yarr","arr","ii'r","jar","kur","ran","rii","ii",
	"nai","ou","kah","oa","ama","uuk","bel","chi","ayt","kay","kas","akor","tam","yir","enai")

/decl/language/tajaran/tailsign
	name = LANGUAGE_SIIKTAJR
	desc = "A standardized Tajaran sign language that was developed in Zarraya and gradually adopted by other nations, incorporating \
			hand gestures and movements of the ears and tail. It is impossible for species with out a tail to use this language"
	signlang_verb = list("gestures with their hands", "gestures with their ears and tail", "gestures with their ears, tail and hands")
	key = "l"
	flags = LANG_FLAG_RESTRICTED | LANG_FLAG_SIGNLANG | LANG_FLAG_NO_STUTTER | LANG_FLAG_NONVERBAL
	shorthand = "TAJSIGN"



//#803b56 is color

/decl/language/tajaran/format_message(message, verb)
	return "[verb], <span class='message'><span style='color: #803b56'>\"[capitalize(message)]\"</span></span>"

/decl/language/tajaran/format_message_radio(message, verb)
	return "[verb], <span style='color: #803b56'>\"[capitalize(message)]\"</span>"
