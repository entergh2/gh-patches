string_ps2_BLAH = "BLABLA"
string_ps2_WARNING = "ATTENTION"
string_ps2_CAUTION = "ATTENTION"
string_ps2_CHECKING = "VÉRIFICATION..."
string_ps2_MEMORY_CARD_ERROR = "ERREUR"
string_ps2_RETRY = "RÉESSAYER"
string_ps2_CONTINUE_WITHOUT_SAVING = "CONTINUER SANS SAUVEGARDER"
string_ps2_SAVE_NOT_FOUND = "AUCUNE SAUVEGARDE"
string_ps2_YES = "OUI"
string_ps2_NO = "NON"
string_ps2_OK = "OK"
string_ps2_CANCEL = "ANNULER"
string_ps2_LOADING = "CHARGEMENT..."
string_ps2_LOAD_SUCCESSFUL = "CHARGEMENT RÉUSSI"
string_ps2_FORMATTING = "FORMATAGE..."
string_ps2_FORMAT_SUCCESSFUL = "FORMATAGE RÉUSSI"
string_ps2_OVERWRITING = "ÉCRASEMENT EN COURS..."
string_ps2_OVERWRITE_SUCCESSFUL = "ÉCRASEMENT RÉUSSI"
string_ps2_SAVING = "SAUVEGARDE..."
string_ps2_SAVE_SUCCESSFUL = "SAUVEGARDE RÉUSSIE"
string_ps2_PRESS_ANY_BUTTON_TO_ROCK = "APPUIE SUR UNE TOUCHE POUR JOUER..."
string_ps2_JUST_PRESS_ANY_BUTTON = "APPUIE SUR N'IMPORTE QUELLE TOUCHE POUR COMMENCER..."
string_ps2_IN_THE_EVENT_OF_ROCK = "EN CAS DE ROCK"
string_ps2_USING_THE_GUITAR_CONTROLLER = "UTILISER LA GUITARE"
string_ps2_PLUG_IN = "BRANCHER"
string_ps2_STRAP_ON = "METS LA SANGLE"
string_ps2_BANG = "ROCK !"
string_ps2_HEAD = "TÊTE"
string_ps2_START = "Touche"
string_ps2_BUTTON = "START"
string_ps2_BACK = "RETOUR"
string_ps2_RED_BUTTON = "Frette rouge"
string_ps2_CONTINUE = "CONTINUER"
string_ps2_GREEN_BUTTON = "Frette verte"
string_ps2_UP_DOWN = "HAUT/BAS"
string_ps2_STRUM_BAR = "Touche de médiator"
string_ps2_STAR_POWER = "STAR POWER"
string_ps2_TILT = "Lève"
string_ps2_AS_MADE_FAMOUS_BY = "d'après la version de"
string_ps2_LARGE_GEMS = "battle gems"
string_ps2_STEREO = "STÉRÉO"
string_ps2_MONO = "MONO"

script get_string_ps2 \{message = unknown}
	localized_string = ""
	use_localized = false
	if IsPAL
		use_localized = true
	else
		GetLanguage
		if (<language> = LANGUAGE_FRENCH || <language> = LANGUAGE_GERMAN || <language> = LANGUAGE_SPANISH || <language> = LANGUAGE_ITALIAN)
			use_localized = true
		endif
	endif
	switch <message>
		case loading
		if (<use_localized> = true)
			localized_string = "Chargement en cours. Ne pas retirer la ^memory card (PS2)^ ou la manette, ni redémarrer ou éteindre la console."
		else
			localized_string = "Loading data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case Saving
		if (<use_localized> = true)
			localized_string = "Sauvegarde en cours. Ne pas retirer la ^memory card (PS2)^ dans ^la fente pour MEMORY CARD Nº 1^ ou la manette, ni redémarrer ou éteindre la console."
		else
			localized_string = "Saving data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case autosaving
		if (<use_localized> = true)
			localized_string = "Auto-sauvegarde en cours. Ne pas retirer la ^memory card (PS2)^ dans ^la fente pour MEMORY CARD Nº 1^ ou la manette, ni redémarrer ou éteindre la console."
		else
			localized_string = "Autosaving data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case overwriting
		if (<use_localized> = true)
			localized_string = "Écrasement des données. Ne pas retirer la ^memory card (PS2)^ dans ^la fente pour MEMORY CARD Nº 1^ ou la manette, ni redémarrer ou éteindre la console."
		else
			localized_string = "Overwriting data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case formatting
		if (<use_localized> = true)
			localized_string = "Formatage de la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1.^ Ne pas retirer la ^memory card (PS2)^ ou la manette, ni redémarrer ou éteindre la console."
		else
			localized_string = "Formatting ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Do not remove ^memory card (8MB)(for PlayStation®2),^ controller, or reset/switch off the console."
		endif
		case load_successful
		localized_string = "Chargement réussi."
		case format_successful
		localized_string = "Formatage réussi."
		case save_successful
		localized_string = "Sauvegarde réussie."
		case overwrite_successful
		localized_string = "Écrasement réussi."
		case boot_autosave_warning
		if (<use_localized> = true)
			localized_string = "Guitar Hero Aerosmith dispose d'un système d'Auto-sauvegarde. L'insertion ou la suppression ultérieure d'une ^memory card (PS2)^ risque d'écraser les données."
		else
			localized_string = "Guitar Hero Aerosmith uses an autosave feature. The insertion or removal of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten."
		endif
		case check_memcard
		if (<use_localized> = true)
			localized_string = "Vérification de la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1.^ Ne pas retirer la ^memory card (PS2)^ ou la manette, ni redémarrer ou éteindre la console."
		else
			localized_string = "Checking ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Do not remove ^memory card (8MB)(for PlayStation®2),^ controller, or reset/switch off the console."
		endif
		case no_memcard_boot
		if (<use_localized> = true)
			localized_string = "Pas de ^memory card (PS2)^ insérée dans la ^fente pour MEMORY CARD Nº 1.^ Guitar Hero Aerosmith dispose d'un système d'Auto-sauvegarde. L'insertion ultérieure d'une ^memory card (PS2)^ risque d'écraser les données précédentes. Pour sauvegarder les données de jeu, insérer une ^memory card (PS2)^ avec au moins 340 KB d'espace libre."
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ inserted in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith uses an Autosave feature. Insertion of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten. Insert a ^memory card (8MB)(for PlayStation®2)^ with at least 340 KB of free space to save game data."
		endif
		case no_memcard_save_boot
		if (<use_localized> = true)
			localized_string = "Pas de ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1.^"
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case no_save_boot
		if (<use_localized> = true)
			localized_string = "Pas de données Guitar Hero Aerosmith présentes sur la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1.^ Guitar Hero Aerosmith dispose d'un système d'Auto-sauvegarde. 340 KB d'espace libre sont nécessaires à la sauvegarde de données. Voulez-vous créer un fichier de sauvegarde ?"
		else
			localized_string = "No Guitar Hero Aerosmith save data present on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith uses an Autosave feature. 340 KB of space is required to save game data. Do you want to create a save file now?"
		endif
		case no_save_ingame
		if (<use_localized> = true)
			localized_string = "Pas de données Guitar Hero Aerosmith présentes sur la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1.^"
		else
			localized_string = "No Guitar Hero Aerosmith save data present on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case save_failed
		if (<use_localized> = true)
			localized_string = "Échec de la sauvegarde ! Vérifier la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1^ et réessayer."
		else
			localized_string = "Save failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case overwrite_failed
		if (<use_localized> = true)
			localized_string = "Échec de l'écrasement ! Vérifier la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1^ et réessayer."
		else
			localized_string = "Overwrite failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case attempt_format
		if (<use_localized> = true)
			localized_string = "La ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1^ n'est pas formatée. Formater la ^memory card (PS2)^ dans ^la fente pour MEMORY CARD Nº 1 ?^"
		else
			localized_string = "^Memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ is unformatted. Would you like to format the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1?^"
		endif
		case confirm_format
		if (<use_localized> = true)
			localized_string = "Formater la ^memory card (PS2)^ dans ^la fente pour MEMORY CARD Nº 1 ?^"
		else
			localized_string = "Are you sure you wish to format ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1?^"
		endif
		case already_formatted
		if (<use_localized> = true)
			localized_string = "^La memory card (PS2)^ de la ^fente pour MEMORY CARD Nº 1^ a déjà été formatée ! Veuillez réinsérer ^la memory card (PS2)^ non formatée de la ^fente pour MEMORY CARD Nº 1^ et sélectionnez réessayer."
		else
			localized_string = "The ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ has already been formatted! Please reinsert unformatted ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and select retry."
		endif
		case format_failed
		if (<use_localized> = true)
			localized_string = "Échec du formatage ! Vérifiez la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1^ et réessayez."
		else
			localized_string = "Format failed! Please check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and try again."
		endif
		case format_cancelled
		localized_string = "Formatage annulé. Continuer sans sauvegarde ?"
		case no_memcard_ingame
		if (<use_localized> = true)
			localized_string = "Pas de ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1.^"
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case load_failed
		if (<use_localized> = true)
			localized_string = "Échec du chargement ! Vérifier la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1^ et réessayer."
		else
			localized_string = "Load failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case overwrite_warning_boot
		if (<use_localized> = true)
			localized_string = "Guitar Hero Aerosmith dispose d'un système d'Auto-sauvegarde. L'insertion ultérieure d'une ^memory card (PS2)^ risque d'écraser les données précédentes. Continuer sans sauvegarder ?"
		else
			localized_string = "Guitar Hero Aerosmith uses an Autosave feature. Insertion of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten. Continue without saving?"
		endif
		case disable_autosave
		localized_string = "Le système d'Auto-sauvegarde est désactivé.\\nLe système d'Auto-sauvegarde peut être activé depuis le menu Options."
		case overwrite_warning_ingame
		if (<use_localized> = true)
			localized_string = "ATTENTION : en sauvegardant, vous écraserez les données Guitar Hero Aerosmith existantes de la ^memory card (PS2)^ de la ^fente pour MEMORY CARD Nº 1.^ Êtes-vous sûr(e) de vouloir sauvegarder ?"
		else
			localized_string = "WARNING: Saving will overwrite any existing Guitar Hero Aerosmith data on the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Are you sure you want to save?"
		endif
		case lose_progress_ingame
		if (<use_localized> = true)
			localized_string = "ATTENTION : si vous chargez des données d'une ^memory card (PS2)^ dans ^la fente pour MEMORY CARD Nº 1,^ votre progression sera perdue. Charger ?"
		else
			localized_string = "WARNING: If you load data from a ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ you will lose your current game progress. Continue with load?"
		endif
		case insufficient_space_boot
		if (<use_localized> = true)
			localized_string = "Espace insuffisant sur la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1.^ Insérer une ^memory card (PS2)^ avec au moins 340 KB d'espace libre ou libérer des fichiers à l'aide du navigateur interne de la console."
		else
			localized_string = "Insufficient free space on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Insert a ^memory card (8MB)(for PlayStation®2)^ with at least 340 KB of free space, or create some space using the console's internal browser."
		endif
		case insufficient_space_ingame
		if (<use_localized> = true)
			localized_string = "Espace insuffisant sur la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1.^ Guitar Hero Aerosmith nécessite 340 KB d'espace libre pour sauvegarder les données."
		else
			localized_string = "Insufficient free space on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith requires 340 KB of free space to save data."
		endif
		case corrupt_boot
		if (<use_localized> = true)
			localized_string = "Données de sauvegarde corrompues sur la ^memory card (PS2)^ de la ^fente pour MEMORY CARD Nº 1.^ 340 KB d'espace libre sont nécessaires à la sauvegarde des données. Remplacer le fichier corrompu et créer un nouveau fichier de sauvegarde ?"
		else
			localized_string = "Corrupt data detected on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ 340 KB of free space is required to save game data. Replace the corrupt file and create a new save file?"
		endif
		case confirm_overwrite_boot
		localized_string = "Confirmer l'écrasement de ce fichier ?"
		case new_memcard_ingame
		if (<use_localized> = true)
			localized_string = "Le statut de la ^memory card (PS2)^ dans la ^fente pour MEMORY CARD Nº 1^ a changé. Poursuivre avec cette ^memory card (PS2)^ provoquera l'écrasement des profils sauvegardés. Écraser les données précédentes ?"
		else
			localized_string = "The status of the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ has changed. Data may be overwritten. Proceed with save?"
		endif
		case warning_480p
		localized_string = "Le mode Progressif peut ne pas fonctionner sur tous les téléviseurs.\\nS'il ne fonctionne pas sur le tien, attends 15 secondes\\net nous le ferons basculer automatiquement sur le mode précédent."
		case now_in_480p
		localized_string = "Tu es à présent en mode Progressif.\\nSouhaites-tu conserver ce mode d'affichage ?"
		case widescreen_string
		localized_string = "Grand écran"
		case progressivescan_string
		localized_string = "Scan progressif"
		default
		printf "No match, string %d not localized" d = <message>
		localized_string = "???"
	endswitch
	return localized_string = <localized_string>
endscript
string_ps2_satan_outfit_style_1 = "Abaddon"
string_ps2_satan_outfit_style_2 = "Apollyon"
string_ps2_satan_outfit_style_3 = "Bélial"
string_ps2_satan_outfit_style_4 = "Le roi Tyrus"
string_ps2_fowlvis_blurb = "Lil Elroy a commencé à jouer du piano alors qu'il n'avait que six ans. Les enfants du coin n'étaient pas tendres avec lui - ils lui répétaient sans arrêt : 'Le piano, c'est pour les chochottes !' Il ne lui a pas fallu longtemps avant de se jeter sur une guitare. Il fait partie d'un groupe depuis l'âge de 12 ans et son amour pour les cordes d'acier est toujours entier.\\n\\nUn producteur lui a donné un boulot dans un studio jusqu'à ce qu'il rencontre une légende en chair et en os. Il a appris tous les trucs de cette icône des jours passés et a rapidement endossé son ceinturon doré, devenu sa marque de fabrique. Depuis ce jour, il n'a que ces mots à la bouche :\\n\\n'Heavy Metal, Punk, Polka ? Tout ça, c'est du rock pour Elroy.'"
string_ps2_fowlvis_outfit_style_1 = "Vegas"
string_ps2_fowlvis_outfit_style_2 = "Nashville"
string_ps2_fowlvis_outfit_style_3 = "Hawaï"
string_ps2_fowlvis_outfit_style_4 = "Tijuana"
string_ps2_fowlvis_outfit_style_5 = "Transylvanie"
string_ps2_fowlvis_outfit_style_6 = "Fort Knox"
string_ps2_fowlvis_outfit_style_7 = "Spokane"
string_ps2_robot_blurb = "Metalhead a commencé sa vie en tant qu'ogive nucléaire russe à tête chercheuse. Après la Guerre Froide, il a été désarmé et vendu en pièces détachées. Quelques grille-pain, un zeste de tuyau d'aspirateur, un roadster années 50 et une râpe à fromage plus tard : Metalhead était devenu le premier robot complètement automatisé. C'est ainsi qu'a commencé l'assaut de Metalhead contre tout ce qui est lent et ringard. Loin de son humble silo soviétique, Metalhead est prêt à monter sur scène et à faire sauter la baraque !"
string_ps2_robot_outfit_style_1 = "Pur Métal"
string_ps2_robot_outfit_style_2 = "Marx"
string_ps2_robot_outfit_style_3 = "Super-Atomik"
string_ps2_robot_outfit_style_4 = "Directeur télé"
string_ps2_robot_outfit_style_5 = "Bille de chewing-gum"
string_ps2_robot_outfit_style_6 = "M. Pinéal"
string_ps2_robot_outfit_style_7 = "BUD - 1 000"
string_ps2_instrument_budcat_blurb = "C'est exactement la même guitare que celle qu'a utilisée Bud pour l'intro. Honnêtement, c'est la seule fois où quelqu'un a joué avec. Vous êtes prévenus..."
string_ps2_instrument_felvis_blurb = "Conçue à partir d'un morceau de frêne des marais du Mississippi de plus de 200 ans et pressée à l'aide du premier disque d'or d'Elroy, cette guitare possède des micros à la hauteur de ses caractéristiques. La légende veut que le cordier d'arrêt et le cordier aient été conçus à partir d'anciens doublons espagnols (malédiction incluse).\\n\\nL'acier utilisé pour les frettes a été tiré du vilebrequin de la veille caisse d'Elroy. Il a toujours dit : 'J'adore ce jouet, je veux toujours l'avoir avec moi.'\\n\\n Elle est un tel objet de convoitise qu'Elroy a engagé une équipe de sécurité pour la surveiller nuit et jour."
string_ps2_instrument_controller_01_blurb = "T'essayes de devenir une rock star ? Alors ne laisse jamais ton guitariste s'approcher de cet instrument, sinon tu pourras seulement essayer de prétendre devenir une rock star."
string_ps2_instrument_controller_02_blurb = "T'essayes de devenir une rock star ? Alors ne laisse jamais ton guitariste s'approcher de cet instrument, sinon tu pourras seulement essayer de prétendre devenir une rock star."
string_ps2_instrument_rifle_blurb = "Cette guitare est le fruit d'un canon laser expérimental russe qui a échoué. Lorsque Metalhead l'a vue, il a tout de suite su qu'il en avait besoin pour sa croisade contre les ringards. Le laser a dû être retiré après une sale affaire : un procès qui impliquait un motel bon marché, un ballon météorologique et un marchand de glaces ambulant. Metalhead a volontairement effacé les détails de l'incident de sa mémoire de données."
string_ps2_instrument_raygun_blurb = "Cette arme a été volée aux Martiens et utilisée pour abattre les soucoupes volantes. Après ça, elle a fait une brève apparition dans une pièce autobiographique dans un petit théâtre. Elle fait désormais partie de la collection privée de Metalhead."
string_ps2_loading_screen_tip_01 = "Des problèmes ? Va voir les didacticiels dans le menu Entraînement."
string_ps2_loading_screen_tip_02 = "Va faire un tour dans Le Coffre-fort pour découvrir des nouvelles chansons, des tenues et des styles super cool."
string_ps2_loading_screen_tip_04 = "Un peu d'entraînement devrait t'aider à maîtriser ces solos pas faciles."
string_ps2_loading_screen_tip_05 = "Si tu n'as jamais enregistré sur un 4 pistes, ton groupe est bidon."
string_ps2_loading_screen_tip_06 = "Assure-toi que le public va te rattraper avant de sauter dans la fosse."
string_ps2_loading_screen_tip_07 = "Les feux d'artifice faits maison sont INTERDITS."
string_ps2_loading_screen_tip_08 = "Arriver en retard aux répètes, c'est une tradition."
string_ps2_loading_screen_tip_09 = "On peut avoir un meilleur retour son ?"
string_ps2_loading_screen_tip_10 = "Plein d'autres groupes s'habillaient déjà tout en noir avant ta naissance."
string_ps2_loading_screen_tip_11 = "Oui, oui, les enceintes sur scène servent en fait de plongeoirs."
string_ps2_loading_screen_tip_12 = "Ne jamais, JAMAIS, laisser le chanteur s'occuper du mixage."
string_ps2_loading_screen_tip_13 = "Tu peux toujours jouer plus fort."
string_ps2_loading_screen_tip_14 = "Ce n'est pas parce qu'on est agressifs qu'on n'aime pas la paix."
string_ps2_loading_screen_tip_15 = "20 minutes d'impro de free jazz, très peu pour moi."
string_ps2_loading_screen_tip_16 = "Personne n'a envie de payer pour t'entendre jouer."
string_ps2_loading_screen_tip_17 = "Faut pas croire, un look négligé, ça se travaille."
string_ps2_loading_screen_tip_18 = "Un groupe sans un bon mécano, c'est la cata assurée."
string_ps2_loading_screen_tip_19 = "Augmente le volume de l'ampli. C'est à peine si mes oreilles entendent quelque chose."
string_ps2_loading_screen_tip_20 = "Avant, je m'affolais quand mon ampli prenait feu. Maintenant ça ne me fait plus rien."
string_ps2_loading_screen_tip_21 = "Il semblerait que les guitares fracassées aient une meilleure acoustique que leurs consoeurs intactes."
string_ps2_loading_screen_tip_22 = "Tu es aussi bon que ton dernier concert... qui craignait un max."
string_ps2_loading_screen_tip_23 = "Tu as super bien joué. Je suis sûr que les sifflets, c'était juste pour tes fringues."
string_ps2_loading_screen_tip_24 = "Une boîte à rythmes se pointerait peut-être à l'heure aux répètes."
string_ps2_loading_screen_tip_25 = "On dirait que t'as un problème avec l'ampli de ta basse. Je l'entends !"
string_ps2_loading_screen_tip_26 = "Va jouer sur scène et vends quelques t-shirts pour qu'on puisse manger ce soir."
string_ps2_loading_screen_tip_27 = "Allez, on commence avec le dernier single.  Comme ça on en aura fini avec cette *&?#@ !"
string_ps2_loading_screen_tip_28 = "Je ne suis que le batteur. On ne me paie pas pour connaître ces trucs !"
string_ps2_loading_screen_tip_29 = "Je le jure, m'sieur l'agent, la télé de la loge s'est débranchée toute seule et elle s'est jetée par la fenêtre !"
string_ps2_loading_screen_tip_30 = "Un vrai guitariste ne s'assoit pas sur le canapé lorsqu'il joue"
string_ps2_loading_screen_tip_31 = "Si la police ne débarque pas, c'est que tu ne joues pas assez fort"
string_ps2_loading_screen_tip_32 = "Si tu entends la police se plaindre, c'est que tu joues pas assez fort"
string_ps2_loading_screen_tip_33 = "Pars toujours du principe qu'il n'y a rien à boire dans la maison"
string_ps2_loading_screen_tip_35 = "C'est pas vraiment une bonne idée d'attaquer ton chanteur"
string_ps2_loading_screen_tip_36 = "Ne détruis jamais tes instruments si tu n'es pas sûr de pouvoir en acheter de nouveaux"
string_ps2_loading_screen_tip_37 = "Toutes les maisons de disques sont mauvaises... à part celle qui t'offre un contrat"
string_ps2_loading_screen_tip_38 = "Le premier qui appuie sur une frette joue sur la première guitare"
string_ps2_loading_screen_tip_39 = "Bonne chance"
