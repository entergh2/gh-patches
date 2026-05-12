GH3_General_Coop_Progression = [
	{
		name = set_initial_states
		type = Scr
		atom_script = Progression_Coop_Init
		atom_params = {
		}
	}
	{
		name = quickplay_coop_5star
		type = Scr
		atom_script = Progression_Coop_5Star
		atom_params = {
		}
		depends_on = [
			{
				type = Scr
				Scr = Progression_CheckSong5Star
				params = {
				}
			}
		]
	}
	{
		name = quickplay_coop_complete_songs
		type = Scr
		atom_script = Progression_Coop_Complete_Songs
		atom_params = {
		}
		depends_on = [
			{
				type = Scr
				Scr = Progression_CheckAllSongsCompleted
				params = {
				}
			}
		]
	}
	{
		name = end_of_first_update
		type = Scr
		atom_script = Progression_Coop_EndOfFirstUpdate
		atom_params = {
		}
	}
]

script Progression_Coop_Init 
	printf \{"Progression_Coop_Init"}
endscript

script Progression_Coop_EndOfFirstUpdate 
	printf \{"Progression_Coop_EndOfFirstUpdate"}
endscript

script Progression_Coop_5Star 
	printf \{"Progression_Coop_5Star"}
endscript

script Progression_Coop_Complete_Songs 
	printf \{"Progression_Coop_Complete_Songs"}
endscript

script register_new_progression_atoms 
	index = ($difficulty_list_props.($current_difficulty).index)
	SetProgressionDifficulty difficulty = <index>
	DeRegisterAtoms
	RegisterAtoms \{name = achievement
		$Achievement_Atoms}
	get_progression_globals game_mode = ($game_mode)
	if NOT (<progression_global> = none)
		RegisterAtoms name = Progression $<progression_global>
		UpdateAtoms \{name = Progression}
	endif
endscript
