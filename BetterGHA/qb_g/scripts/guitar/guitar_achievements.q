gStar_Power_Triggered = 0
jailbait_achievement = 0
subway_achievement = 0
Achievement_Atoms = [
	{
		name = MAKE_IT
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_IsGameFinished
				params = {
					game_mode = p1_career
					difficulty = easy
				}
			}
		]
	}
	{
		name = MOVIN_OUT
		type = Scr
		atom_script = Achievements_Stack_Career
		atom_params = {
			difficulty = medium
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_IsGameFinished
				params = {
					game_mode = p1_career
					difficulty = medium
				}
			}
		]
	}
	{
		name = ROCK_IN_A_HARD_PLACE
		type = Scr
		atom_script = Achievements_Stack_Career
		atom_params = {
			difficulty = hard
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_IsGameFinished
				params = {
					game_mode = p1_career
					difficulty = hard
				}
			}
		]
	}
	{
		name = DREAM_ON
		type = Scr
		atom_script = Achievements_Stack_Career
		atom_params = {
			difficulty = expert
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_IsGameFinished
				params = {
					game_mode = p1_career
					difficulty = expert
				}
			}
		]
	}
	{
		name = aerosmith
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_AEROSMITH
			}
		]
	}
	{
		name = JAILBAIT
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_Play_At_Venue
				params = {
					venue = load_z_Nipmuc
				}
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
			}
		]
	}
	{
		name = SUBWAY
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_Play_At_Venue
				params = {
					venue = load_z_maxskc
				}
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
			}
		]
	}
	{
		name = ON_THE_ROAD_AGAIN
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_Unlocked_Venue
				params = {
					venue = load_z_fenway
				}
			}
		]
	}
	{
		name = NINE_LIVES
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_Unlocked_Venue
				params = {
					venue = load_z_nine_lives
				}
			}
		]
	}
	{
		name = CRITICAL_MASS
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_Unlocked_Venue
				params = {
					venue = load_z_jpplay
				}
			}
		]
	}
	{
		name = MARCH_19TH_2001
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_Unlocked_Venue
				params = {
					venue = load_z_hof
				}
			}
		]
	}
	{
		name = NO_MORE_NO_MORE
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Progression_CheckEncoreComplete
				params = {
					tier = 1
				}
			}
			{
				type = Scr
				Scr = Progression_CheckEncoreComplete
				params = {
					tier = 2
				}
			}
			{
				type = Scr
				Scr = Progression_CheckEncoreComplete
				params = {
					tier = 3
				}
			}
			{
				type = Scr
				Scr = Progression_CheckEncoreComplete
				params = {
					tier = 4
				}
			}
			{
				type = Scr
				Scr = Progression_CheckEncoreComplete
				params = {
					tier = 5
				}
			}
			{
				type = Scr
				Scr = Progression_CheckEncoreComplete
				params = {
					tier = 6
				}
			}
		]
	}
	{
		name = SAME_OLD_SONG_AND_DANCE
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_IsGameFinished
				params = {
					game_mode = p1_career
					difficulty = any
				}
			}
			{
				type = Scr
				Scr = Achievements_IsGameFinished
				params = {
					game_mode = p1_career
					difficulty = any
					Bonus
				}
			}
		]
	}
	{
		name = SCORE_HERO
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_SCORE_HERO
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
			}
		]
	}
	{
		name = GET_IT_UP
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_Career_Score_Threshold
				params = {
					THRESHOLD = 1999999
				}
				permanent = false
			}
		]
	}
	{
		name = EAT_THE_RICH
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_Career_Cash_Threshold
				params = {
					THRESHOLD = 49999
				}
				permanent = false
			}
		]
	}
	{
		name = I_DONT_WANT_TO_MISS_A_THING
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievement_progression_difficulty_threshold
				params = {
					difficulty = medium
				}
				permanent = false
			}
			{
				type = Scr
				Scr = Achievements_100percent_performance
				permanent = false
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
				permanent = false
			}
		]
	}
	{
		name = GEMS
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_GEMS
				permanent = false
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
				permanent = false
			}
		]
	}
	{
		name = SICK_AS_A_DOG
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievement_progression_difficulty_threshold
				params = {
					difficulty = medium
				}
				permanent = false
			}
			{
				type = Scr
				Scr = Achievements_5StarSong
				params = {
				}
				permanent = false
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
				permanent = false
			}
		]
	}
	{
		name = AINT_THAT_A_B____H
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_100percent_performance
				permanent = false
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
				permanent = false
			}
		]
	}
	{
		name = DUDE_LOOKS_LIKE_A_LADY
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_DUDE_LOOKS_LIKE_A_LADY
				permanent = false
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
				permanent = false
			}
		]
	}
	{
		name = WOMAN_OF_THE_WORLD
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_WOMAN_OF_THE_WORLD
				permanent = false
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
				permanent = false
			}
		]
	}
	{
		name = SPACED
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_SPACED
				permanent = false
			}
			{
				type = Scr
				Scr = Achievements_IsSongWon
				permanent = false
			}
		]
	}
	{
		name = WHAT_IT_TAKES
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_WHAT_IT_TAKES
			}
		]
	}
	{
		name = DEUCES_ARE_WILD
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_CoopBeatenPart
				params = {
					part = guitar
				}
			}
		]
	}
	{
		name = LOVE_ME_TWO_TIMES
		type = Scr
		atom_script = Achievements_DummyScript
		atom_params = {
			achievement
		}
		depends_on = [
			{
				type = Scr
				Scr = Achievements_CoopBeatenPart
				params = {
					part = rhythm
				}
			}
		]
	}
]
Achievements_SongWonFlag = 0

script Achievements_IsSongWon 
	if ($Achievements_SongWonFlag = 1)
		return \{true}
	endif
	return \{false}
endscript

script Achievements_DummyScript 
endscript

script Achievements_SongWon 
	if ($game_mode = p1_career)
		GetGlobalTags \{achievement_info}
		total_cash_in_career_mode = (<total_cash_in_career_mode> + <additional_cash>)
		total_notes_in_career_mode = (<total_notes_in_career_mode> + $player1_status.notes_hit)
		total_points_in_career_mode = (<total_points_in_career_mode> + $player1_status.score)
		SetGlobalTags achievement_info params = {total_cash_in_career_mode = <total_cash_in_career_mode>
			total_notes_in_career_mode = <total_notes_in_career_mode>
			total_points_in_career_mode = <total_points_in_career_mode>}
		if ($current_difficulty = easy)
			total_points_in_career_mode_easy = (<total_points_in_career_mode_easy> + $player1_status.score)
			SetGlobalTags achievement_info params = {total_points_in_career_mode_easy = <total_points_in_career_mode_easy>}
		endif
		if ($current_difficulty = medium)
			total_points_in_career_mode_medium = (<total_points_in_career_mode_medium> + $player1_status.score)
			SetGlobalTags achievement_info params = {total_points_in_career_mode_medium = <total_points_in_career_mode_medium>}
		endif
		if ($current_difficulty = hard)
			total_points_in_career_mode_hard = (<total_points_in_career_mode_hard> + $player1_status.score)
			SetGlobalTags achievement_info params = {total_points_in_career_mode_hard = <total_points_in_career_mode_hard>}
		endif
		if ($current_difficulty = expert)
			total_points_in_career_mode_expert = (<total_points_in_career_mode_expert> + $player1_status.score)
			SetGlobalTags achievement_info params = {total_points_in_career_mode_expert = <total_points_in_career_mode_expert>}
		endif
		Achievements_CheckCareerTotals
	endif
	if ($game_mode = p2_coop || $game_mode = p2_quickplay)
		if ($gStar_Power_Triggered >= 3)
			WriteAchievements \{achievement = WHEN_I_NEEDED_YOU}
		endif
		if ($game_mode = p2_quickplay)
			if (($player1_status.total_notes = $player1_status.notes_hit) && ($player2_status.total_notes = $player2_status.notes_hit))
				if NOT (($player1_status.total_notes = 0) && ($player2_status.total_notes = 0))
					WriteAchievements \{achievement = LET_THE_MUSIC_DO_THE_TALKING}
				endif
			endif
		elseif ($game_mode = p2_coop)
			if ($player1_status.total_notes = $player1_status.notes_hit)
				if NOT ($player1_status.total_notes = 0)
					WriteAchievements \{achievement = LET_THE_MUSIC_DO_THE_TALKING}
				endif
			endif
		endif
		if (($player1_status.character_id = bradw) && ($player2_status.character_id = TomH))
			WriteAchievements \{achievement = BACK_IN_THE_SADDLE}
		elseif (($player1_status.character_id = TomH) && ($player2_status.character_id = bradw))
			WriteAchievements \{achievement = BACK_IN_THE_SADDLE}
		endif
		if (($primary_controller) = ($player1_status.controller))
			player_status = player1_status
		else
			player_status = player2_status
		endif
		if ($<player_status>.part = rhythm)
			SetGlobalTags ($current_song) params = {beaten_coop_as_rhythm = 1}
		else
			SetGlobalTags ($current_song) params = {beaten_coop_as_lead = 1}
		endif
	endif
	if ($game_mode = p1_career)
		get_difficulty_text_nl difficulty = ($current_difficulty)
		FormatText checksumname = bandname_id 'band%i_info_%g' i = ($current_band) g = 'p1_career'
		FormatText checksumname = hendrix_checksum 'hendrix_achievement_%s' s = <difficulty_text_nl>
		GetGlobalTags <bandname_id> param = <hendrix_checksum>
		GetGlobalTags \{user_options
			params = lefty_flip_p1}
		if ((<...>.<hendrix_checksum>) = 2)
		elseif ((<...>.<hendrix_checksum>) = -1)
			AddParam name = <hendrix_checksum> structure_name = new_params value = <lefty_flip_p1>
			SetGlobalTags <bandname_id> params = <new_params>
		elseif NOT ((<...>.<hendrix_checksum>) = <lefty_flip_p1>)
			AddParam name = <hendrix_checksum> structure_name = new_params value = 2
			SetGlobalTags <bandname_id> params = <new_params>
		endif
	endif
	if ($game_mode = p1_career || $game_mode = p1_quickplay)
		if ($current_song = kingsandqueens && $current_difficulty = expert && $boss_battle = 0 && $end_credits = 0)
			WriteAchievements \{achievement = ONLY_THE_L33T}
		endif
	endif
endscript

script Achievements_100percent_performance 
	printf \{"Achievements_100percent_performance"}
	if ($is_attract_mode = 0 &&
			($game_mode = p1_career ||
				$game_mode = p1_quickplay))
		if ($player1_status.notes_hit = $player1_status.max_notes &&
				$player1_status.max_notes > 0)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_WhoNeedsThePower 
	printf \{"Achievements_WhoNeedsThePower"}
	if ($game_mode = training ||
			$game_mode = practice ||
			$boss_battle = 1)
		return \{false}
	endif
	if ($is_network_game = 0 &&
			($game_mode = p2_pro_faceoff ||
				$game_mode = p2_faceoff ||
				$game_mode = p2_battle))
		return \{false}
	endif
	printf \{"star power trigged  = %d"
		d = $gStar_Power_Triggered}
	if ($player1_status.score > 199999 &&
			$gStar_Power_Triggered = 0 &&
			$current_song = cultofpersonality)
		return \{true}
	endif
	return \{false}
endscript

script Achievements_TONE_DEAF 
	printf \{"Achievements_TONE_DEAF"}
	if ($game_mode = p1_quickplay ||
			($game_mode = p1_career && $boss_battle = 0))
		GetGlobalTags \{user_options}
		if ($current_difficulty = expert)
			if (<guitar_volume> = 0)
				return \{true}
			endif
		endif
	endif
	return \{false}
endscript

script Achievements_STAR_MANIA 
	printf \{"Achievements_STAR_MANIA"}
	if ($game_mode = training ||
			$game_mode = practice ||
			$boss_battle = 1)
		return \{false}
	endif
	if NOT ($game_mode = p1_quickplay)
		return \{false}
	endif
	printf \{"star power trigged  = %d"
		d = $gStar_Power_Triggered}
	if ($gStar_Power_Triggered > 2)
		if ($current_song = kingsandqueens && $current_difficulty = expert)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_LIFE_OF_THE_PARTY 
	printf \{"Achievements_LIFE_OF_THE_PARTY"}
	if ($is_network_game = 1)
		GetGlobalTags \{achievement_info}
		if (<ranked_consecutive_won_as_host> > 14)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_SEARCH_AND_DESTROY 
	printf \{"Achievements_SEARCH_AND_DESTROY"}
	if ($is_network_game = 1)
		GetGlobalTags \{achievement_info}
		if (<ranked_consecutive_won_as_client> > 14)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_BUTTON_MASHER 
	printf \{"Achievements_BUTTON_MASHER"}
	if ($is_network_game = 1)
		GetGlobalTags \{achievement_info}
		if (<ranked_matches_won_with_standard_controller> > 14)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_BIG_OL_PILE_OF_WINS 
	printf \{"Achievements_BIG_OL_PILE_OF_WINS"}
	if ($is_network_game = 1)
		GetGlobalTags \{achievement_info}
		if (<ranked_matches_won> > 499)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_ENLIGHTENED_GUITARIST 
	array_entry = 0
	get_songlist_size
	num_gold_star_games = 0
	begin
	get_songlist_checksum index = <array_entry>
	get_difficulty_text_nl \{difficulty = expert}
	get_song_prefix song = <song_checksum>
	get_formatted_songname song_prefix = <song_prefix> difficulty_text_nl = <difficulty_text_nl>
	GetGlobalTags <songname>
	if (<achievement_gold_star> = 1)
		num_gold_star_games = (<num_gold_star_games> + 1)
	endif
	array_entry = (<array_entry> + 1)
	repeat <array_size>
	if (<num_gold_star_games> > 19)
		return \{true}
	endif
	return \{false}
endscript

script Achievement_TOYS_IN_THE_ATTIC 
	printf \{"Achievement_TOYS_IN_THE_ATTIC"}
	guitar_array = ($Bonus_Guitars)
	GetArraySize <guitar_array>
	index = 0
	begin
	guitar_id = (<guitar_array> [<index>].id)
	GetGlobalTags <guitar_id>
	if (<unlocked> = 0)
		return \{false}
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	guitar_array = ($Bonus_Basses)
	GetArraySize <guitar_array>
	index = 0
	begin
	guitar_id = (<guitar_array> [<index>].id)
	GetGlobalTags <guitar_id>
	if (<unlocked> = 0)
		return \{false}
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	return \{true}
endscript

script Achievement_BIG_TEN_INCH_RECORD 
	GetArraySize ($Bonus_Songs_Info)
	index = 0
	begin
	GetGlobalTags ($Bonus_Songs_Info [<index>].item)
	if (<unlocked> = 0)
		return \{false}
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	return \{true}
endscript

script Achievement_KINGS_AND_QUEENS 
	character_array = ($Secret_Characters)
	GetArraySize <character_array>
	index = 0
	begin
	character_id = (<character_array> [<index>].id)
	GetGlobalTags <character_id>
	if (<unlocked> = 0)
		return \{false}
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	return \{true}
endscript

script Achievement_WALK_THIS_WAY 
	character_array = ($Secret_Characters)
	GetArraySize <character_array>
	index = 0
	begin
	character_id = (<character_array> [<index>].id)
	GetGlobalTags <character_id>
	if ((<unlocked> = 1) && (<character_array> [<index>].info_name = dmc))
		return \{true}
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	return \{false}
endscript

script Achievement_BURNING_A_HOLE_IN_YOUR_POCKET 
	GetArraySize ($Bonus_Videos)
	index = 0
	begin
	video_checksum = ($Bonus_Videos [<index>].id)
	GetGlobalTags <video_checksum>
	if (<unlocked> = 0)
		return \{false}
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	if NOT Achievement_BIG_TEN_INCH_RECORD
		return \{false}
	endif
	if NOT Achievement_TOYS_IN_THE_ATTIC
		return \{false}
	endif
	if NOT Achievement_KINGS_AND_QUEENS
		return \{false}
	endif
	character_array = ($Bonus_Outfits)
	GetArraySize <character_array>
	index = 0
	begin
	character_id = (<character_array> [<index>].id)
	GetGlobalTags <character_id>
	if (<unlocked> = 0)
		return \{false}
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	character_array = ($Bonus_Styles)
	GetArraySize <character_array>
	index = 0
	begin
	character_id = (<character_array> [<index>].id)
	GetGlobalTags <character_id>
	if (<unlocked> = 0)
		return \{false}
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	return \{true}
endscript

script Achievement_CheckBuyAchievements 
	if Achievement_TOYS_IN_THE_ATTIC
		WriteAchievements \{achievement = TOYS_IN_THE_ATTIC}
	endif
	if Achievement_BIG_TEN_INCH_RECORD
		WriteAchievements \{achievement = BIG_TEN_INCH_RECORD}
	endif
	if Achievement_KINGS_AND_QUEENS
		WriteAchievements \{achievement = KINGS_AND_QUEENS}
	endif
	if Achievement_WALK_THIS_WAY
		WriteAchievements \{achievement = WALK_THIS_WAY}
	endif
	if Achievement_BURNING_A_HOLE_IN_YOUR_POCKET
		WriteAchievements \{achievement = BURNING_A_HOLE_IN_YOUR_POCKET}
	endif
	if Achievements_WELCOME_TO_HELL
		WriteAchievements \{achievement = WELCOME_TO_HELL}
	endif
endscript

script Achievements_IsGameFinished 
	printf \{"Achievements_IsGameFinished"}
	if NOT GotParam \{difficulty}
		ScriptAssert \{"No difficulty"}
	endif
	if NOT GotParam \{game_mode}
		ScriptAssert \{"No game mode"}
	endif
	GetArraySize ($difficulty_list)
	array_count = 0
	begin
	get_difficulty_text_nl difficulty = ($difficulty_list [<array_count>])
	if GotParam \{Bonus}
		get_progression_globals game_mode = <game_mode> Bonus
	else
		get_progression_globals game_mode = <game_mode>
	endif
	setlist_prefix = ($<tier_global>.prefix)
	FormatText checksumname = gametype_checksum '%p_%s' p = <setlist_prefix> s = <difficulty_text_nl>
	GetGlobalTags <gametype_checksum>
	if (<difficulty> = any)
		if (<complete> = 1)
			return \{true}
		endif
	endif
	if (<difficulty> = all)
		if (<complete> = 0)
			return \{false}
		endif
	endif
	if (<difficulty> = ($difficulty_list [<array_count>]))
		if (<complete> = 1)
			return \{true}
		else
			return \{false}
		endif
	endif
	array_count = (<array_count> + 1)
	repeat <array_size>
	if (<difficulty> = any)
		return \{false}
	else
		return \{true}
	endif
endscript

script Achievements_SCORE_HERO 
	printf \{"Achievements_SCORE_HERO"}
	if ($game_mode = p1_quickplay || $game_mode = p1_career)
		if (($player1_status.score > 325000) && ($current_song = trainkeptarollin))
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_HALF_A_MILL 
	printf \{"Achievements_HALF_A_MILL"}
	if ($game_mode = p1_quickplay || $game_mode = p1_career)
		if ($player1_status.score > 500000)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_FIRST_MILL 
	printf \{"Achievements_FIRST_MILL"}
	if ($game_mode = p1_quickplay || $game_mode = p1_career)
		if ($player1_status.score > 750000)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_CheckCareerTotals 
	GetGlobalTags \{achievement_info}
	if (<total_cash_in_career_mode> > 350000)
		WriteAchievements \{achievement = NEVER_GONNA_SPEND_IT_ALL}
	endif
	if (<total_notes_in_career_mode> > 250000)
		WriteAchievements \{achievement = NOTES_FROM_HELL}
	endif
	if (<total_points_in_career_mode> > 100000000)
		WriteAchievements \{achievement = BILLION_GULP}
	endif
endscript

script Achievements_CoopBeatenPart 
	printf \{"Achievements_CoopBeatenPart"}
	get_progression_globals \{game_mode = p2_quickplay}
	setlist_prefix = ($<tier_global>.prefix)
	tier = 1
	begin
	FormatText checksumname = tiername '%ptier%i' p = <setlist_prefix> i = <tier>
	FormatText checksumname = tier_checksum 'tier%s' s = <tier>
	GetArraySize ($<tier_global>.<tier_checksum>.songs)
	array_count = 0
	begin
	GetGlobalTags ($<tier_global>.<tier_checksum>.songs [<array_count>])
	if (<part> = rhythm)
		if (<beaten_coop_as_rhythm> = 0)
			return \{false}
		endif
	else
		if (<beaten_coop_as_lead> = 0)
			return \{false}
		endif
	endif
	array_count = (<array_count> + 1)
	repeat <array_size>
	tier = (<tier> + 1)
	repeat ($<tier_global>.num_tiers)
	return \{true}
endscript

script Achievements_WELCOME_TO_HELL 
	GetGlobalTags \{achievement_info
		param = ranked_matches_played}
	if (<ranked_matches_played> < 100)
		return \{false}
	endif
	if NOT Achievement_BURNING_A_HOLE_IN_YOUR_POCKET
		return \{false}
	endif
	if NOT Achievements_IsGameFinished \{game_mode = p1_career
			difficulty = all}
		return \{false}
	endif
	return \{true}
endscript

script Achievements_HENDRIX_REBORN 
	GetGlobalTags \{achievement_info}
	if (<hendrix_achievement_lefty_off> = 1 &&
			<hendrix_achievement_lefty_on> = 1)
		return \{true}
	endif
	return \{false}
endscript

script Achievements_WHAMMY_MANIA 
	if ($current_song = numberofthebeast)
		if ($game_mode = p1_career || $game_mode = p1_quickplay)
			if ($whammy_mania_achievement_invalidated = 0)
				return \{true}
			endif
		endif
	endif
	return \{false}
endscript

script Achievements_SongFailed 
	completion = 0
	get_song_end_time song = ($current_song)
	if (<total_end_time> > 0)
		completion = (100 * $failed_song_time / <total_end_time>)
	endif
	CastToInteger \{completion}
	if NOT ($current_song = bossjoe)
		get_difficulty_text_nl difficulty = ($current_difficulty)
		get_song_prefix song = ($current_song)
		get_formatted_songname song_prefix = <song_prefix> difficulty_text_nl = <difficulty_text_nl>
		if ($game_mode = p2_coop || $game_mode = p2_quickplay)
			GetGlobalTags <songname> param = coop_failedtimes
			coop_failedtimes = (<coop_failedtimes> + 1)
			SetGlobalTags <songname> params = {coop_failedtimes = <coop_failedtimes>}
		else
			GetGlobalTags <songname> param = failedtimes
			failedtimes = (<failedtimes> + 1)
			SetGlobalTags <songname> params = {failedtimes = <failedtimes>}
		endif
	endif
	if ($game_mode = p2_coop || $game_mode = p2_quickplay)
		GetArraySize \{$gh3_songlist}
		total_songs = <array_size>
		GetArraySize \{$difficulty_list}
		total_diffs = <array_size>
		total_song_failures = 0
		song_count = 0
		begin
		diffs_count = 0
		begin
		get_difficulty_text_nl difficulty = ($difficulty_list [<diffs_count>])
		get_song_prefix song = ($gh3_songlist [<song_count>])
		get_formatted_songname song_prefix = <song_prefix> difficulty_text_nl = <difficulty_text_nl>
		GetGlobalTags <songname> param = coop_failedtimes
		total_song_failures = (<total_song_failures> + <coop_failedtimes>)
		if (<total_song_failures> > 4)
			WriteAchievements \{achievement = NOBODYS_FAULT}
			break
		endif
		diffs_count = (<diffs_count> + 1)
		repeat <total_diffs>
		song_count = (<song_count> + 1)
		repeat <total_songs>
		if (<completion> > 94)
			WriteAchievements \{achievement = FALLEN_ANGELS}
		endif
	endif
	if ($game_mode = p1_career || $game_mode = p1_quickplay)
		GetArraySize \{$difficulty_list}
		array_count = 0
		total_failedtimes = 0
		begin
		get_difficulty_text_nl difficulty = ($difficulty_list [<array_count>])
		get_song_prefix song = ($current_song)
		get_formatted_songname song_prefix = <song_prefix> difficulty_text_nl = <difficulty_text_nl>
		GetGlobalTags <songname> param = failedtimes
		total_failedtimes = (<total_failedtimes> + <failedtimes>)
		array_count = (<array_count> + 1)
		repeat <array_size>
		if (<total_failedtimes> > 9)
			WriteAchievements \{achievement = NIGHT_IN_THE_RUTS}
		endif
	endif
	if ($game_mode = p1_career)
		GetGlobalTags \{achievement_info}
		total_notes_in_career_mode = (<total_notes_in_career_mode> + $player1_status.notes_hit)
		total_points_in_career_mode = (<total_points_in_career_mode> + $player1_status.score)
		SetGlobalTags achievement_info params = {total_notes_in_career_mode = <total_notes_in_career_mode>
			total_points_in_career_mode = <total_points_in_career_mode>}
		Achievements_CheckCareerTotals
	endif
endscript

script Achievements_net_game_completed 
	if NOT GotParam \{outcome}
		return
	endif
	if ($is_network_game = 1 && (NetSessionFunc func = isranked obj = match))
		if (<outcome> = win)
			retrieve_player_net_id \{player = 2}
			CheckAndWriteMakerAchievement player_xuid = <net_id>
			if ($game_mode = p2_pro_faceoff)
				WriteAchievements \{achievement = MY_FIST_YOUR_FACE}
				if ((($player1_status.score) - ($player2_status.score)) > 9999)
					WriteAchievements \{achievement = WALKIN_THE_DOG}
				endif
			elseif ($game_mode = p2_faceoff)
				WriteAchievements \{achievement = DONT_GET_MAD_GET_EVEN}
			elseif ($game_mode = p2_battle)
				if (($player1_status.final_blow_powerup) = 7)
					WriteAchievements \{achievement = SOUL_SAVER}
				endif
			endif
		elseif (<outcome> = lose)
			if ($game_mode = p2_pro_faceoff)
				WriteAchievements \{achievement = YOU_SEE_ME_CRYING}
			elseif ($game_mode = p2_faceoff)
				WriteAchievements \{achievement = FALLING_OFF}
			endif
		endif
	endif
endscript

script Achievements_WHAT_IT_TAKES 
	printf \{"Achievements_WHAT_IT_TAKES"}
	if ($is_network_game = 1)
		GetGlobalTags \{achievement_info}
		if (<ranked_matches_played> > 19)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Achievements_SPACED 
	printf \{"Achievements_SPACED"}
	if ($game_mode = training ||
			$game_mode = practice ||
			$game_mode = p2_battle ||
			$game_mode = p2_faceoff ||
			$boss_battle = 1)
		return \{false}
	endif
	if (($gStar_Power_Triggered = 0) && ($player1_status.star_power_amount >= 50.0))
		return \{true}
	endif
	return \{false}
endscript

script Achievements_WOMAN_OF_THE_WORLD 
	printf \{"Achievements_WOMAN_OF_THE_WORLD"}
	is_aerosmith_song song = ($current_song)
	is_joe_perry_song song = ($current_song)
	if ((<aerosmith_song> = 1 && $is_network_game = 0) ||
			(<joe_perry_song> = 1 && $is_network_game = 0) ||
			$game_mode = training ||
			$game_mode = practice ||
			$game_mode = p2_battle ||
			$game_mode = p2_faceoff ||
			$boss_battle = 1)
		return \{false}
	endif
	if (($player1_status.character_id) = Casey ||
			($player1_status.character_id) = judy ||
			($player1_status.character_id) = Midori)
		return \{true}
	endif
	return \{false}
endscript

script Achievements_DUDE_LOOKS_LIKE_A_LADY 
	printf \{"Achievements_DUDE_LOOKS_LIKE_A_LADY"}
	is_aerosmith_song song = ($current_song)
	is_joe_perry_song song = ($current_song)
	if ((<aerosmith_song> = 1 && $is_network_game = 0) ||
			(<joe_perry_song> = 1 && $is_network_game = 0) ||
			$game_mode = practice ||
			$game_mode = p2_battle ||
			$game_mode = p2_faceoff ||
			$boss_battle = 1 ||
			$is_network_game = 1)
		return \{false}
	endif
	if (($player1_status.character_id) = Izzy)
		return \{true}
	endif
	return \{false}
endscript

script Achievement_progression_difficulty_threshold 
	printf \{"Achievement_progression_difficulty_threshold"}
	if NOT GotParam \{difficulty}
		return \{false}
	endif
	switch <difficulty>
		case easy
		starting_index = 0
		case medium
		starting_index = 1
		case hard
		starting_index = 2
		case expert
		starting_index = 3
	endswitch
	GetArraySize \{$difficulty_list}
	index = <starting_index>
	begin
	if Progression_CheckDiff diff = ($difficulty_list [<index>])
		return \{true}
	endif
	index = (<index> + 1)
	repeat (<array_size> - <starting_index>)
	return \{false}
endscript

script Achievements_Career_Score_Threshold 
	printf \{"Achievements_Career_Score_Threshold"}
	if NOT GotParam \{THRESHOLD}
		return \{false}
	endif
	get_progression_globals \{game_mode = p1_career}
	summation_career_score tier_global = <tier_global>
	if (<career_score> > <THRESHOLD>)
		return \{true}
	endif
	return \{false}
endscript

script Achievements_Unlocked_Venue 
	printf \{"Achievements_Unlocked_Venue"}
	if NOT GotParam \{venue}
		return \{false}
	endif
	get_LevelZoneArray_size
	array_count = 0
	begin
	get_LevelZoneArray_checksum index = <array_count>
	FormatText checksumname = venue_checksum 'venue_%s' s = ($LevelZones.<level_checksum>.name)
	GetGlobalTags <venue_checksum> params = {unlocked}
	if ((<venue> = <level_checksum>) && (<unlocked> = 1))
		return \{true}
	endif
	array_count = (<array_count> + 1)
	repeat <array_size>
	return \{false}
endscript

script Achievements_AEROSMITH 
	printf \{"Achievements_AEROSMITH"}
	get_progression_globals \{game_mode = p1_career}
	if ($game_mode = p1_career)
		array_count = 0
		begin
		setlist_prefix = ($<tier_global>.prefix)
		FormatText checksumname = tiername '%ptier%i' p = <setlist_prefix> i = (<array_count> + 1)
		GetGlobalTags <tiername> param = aerosmith_unlocked
		if (<aerosmith_unlocked> = 1)
			return \{true}
		endif
		array_count = (<array_count> + 1)
		repeat ($<tier_global>.num_tiers)
	endif
	return \{false}
endscript

script Achievements_GEMS 
	printf \{"Achievements_GEMS"}
	if ($game_mode = training ||
			$game_mode = practice ||
			$game_mode = p2_battle ||
			$game_mode = p2_faceoff ||
			$boss_battle = 1)
		return \{false}
	endif
	if (($player1_status.sp_phrases_hit) = ($player1_status.sp_phrases_total))
		return \{true}
	endif
	return \{false}
endscript

script Achievements_5StarSong 
	printf \{"Achievements_5StarSong"}
	if (($player1_status.stars) >= 5)
		return \{true}
	endif
	return \{false}
endscript

script Achievements_Stack_Career 
	printf \{"Achievements_Stack_Career"}
	if NOT GotParam \{difficulty}
		return
	endif
	switch <difficulty>
		case medium
		WriteAchievements \{achievement = MAKE_IT}
		case hard
		WriteAchievements \{achievement = MAKE_IT}
		WriteAchievements \{achievement = MOVIN_OUT}
		case expert
		WriteAchievements \{achievement = MAKE_IT}
		WriteAchievements \{achievement = MOVIN_OUT}
		WriteAchievements \{achievement = ROCK_IN_A_HARD_PLACE}
	endswitch
endscript

script Achievements_Play_At_Venue 
	printf \{"Achievements_Play_At_Venue"}
	if NOT GotParam \{venue}
		return \{false}
	endif
	if ($jailbait_achievement = 1 && <venue> = load_z_Nipmuc)
		return \{true}
	endif
	if ($subway_achievement = 1 && <venue> = load_z_maxskc)
		return \{true}
	endif
	return \{false}
endscript

script Achievements_Career_Cash_Threshold 
	if NOT GotParam \{THRESHOLD}
		return \{false}
	endif
	GetGlobalTags \{achievement_info}
	if (<total_cash_in_career_mode> > <THRESHOLD>)
		return \{true}
	endif
	return \{false}
endscript
