curReviewLighting = 0

script CycleReviewLighting 
	change curReviewLighting = ($curReviewLighting + 1)
	if ($curReviewLighting = 7)
		change \{curReviewLighting = 0}
	endif
	GetPakManCurrentName \{map = zones}
	FormatText checksumname = lightPrefix '%p_GFX_L' p = <pakname>
	CallScriptOnNode prefix = <lightPrefix> callBack_Script = CB_CycleReviewLighting params = {}
endscript

script CB_CycleReviewLighting 
	GetLightColor name = <nodeName>
	big = <r>
	if (<big> < <g>)
		big = <g>
	endif
	if (<big> < <b>)
		big = <b>
	endif
	switch $curReviewLighting
		case 0
		SetLightColor name = <nodeName> r = <big> g = <big> b = <big>
		case 1
		SetLightColor name = <nodeName> r = <big> g = (<big> / 6.0) b = (<big> / 6.0)
		case 2
		SetLightColor name = <nodeName> r = (<big> / 6.0) g = <big> b = (<big> / 6.0)
		case 3
		SetLightColor name = <nodeName> r = (<big> / 6.0) g = (<big> / 6.0) b = <big>
		case 4
		SetLightColor name = <nodeName> r = (<big> / 6.0) g = <big> b = <big>
		case 5
		SetLightColor name = <nodeName> r = <big> g = (<big> / 6.0) b = <big>
		case 6
		SetLightColor name = <nodeName> r = <big> g = <big> b = (<big> / 6.0)
	endswitch
endscript

script SafeCreate 
	if IsInNodeArray <nodeName>
		if NOT IsCreated <nodeName>
			create name = <nodeName>
		endif
	endif
endscript

script SafeKill 
	if IsCreated <nodeName>
		kill name = <nodeName>
	endif
endscript

script ScreenFlash \{time = 1}
	KillSpawnedScript \{id = ScreenFlash}
	SpawnScriptLater ScreenFlashOn id = ScreenFlash params = {time = <time>}
endscript

script ScreenFlashOn 
	if NOT ScreenFX_FxInstanceExists \{viewport = bg_viewport
			name = FlashBS}
		ScreenFX_AddFXInstance {
			viewport = bg_viewport
			name = FlashBS
			($ScreenFlash_TOD_Manager.screen_fx [0])
		}
	else
		ScreenFX_UpdateFXInstanceParams {
			viewport = bg_viewport
			name = FlashBS
			($ScreenFlash_TOD_Manager.screen_fx [0])
		}
	endif
	Wait (0.1 * <time>) seconds
	if ScreenFX_FxInstanceExists \{viewport = bg_viewport
			name = FlashBS}
		ScreenFX_UpdateFXInstanceParams {
			viewport = bg_viewport
			name = FlashBS
			time = <time>
			($ScreenFlash_TOD_Manager.screen_fx [0])
			contrast = 1
			brightness = 1
		}
	endif
	Wait <time> seconds
	SpawnScriptLater \{ScreenFlashOff
		id = ScreenFlash}
endscript

script ScreenFlashOff 
	if ViewportExists \{id = bg_viewport}
		if ScreenFX_FxInstanceExists \{viewport = bg_viewport
				name = FlashBS}
			ScreenFX_RemoveFXInstance \{viewport = bg_viewport
				name = FlashBS}
		endif
	endif
endscript

script ScreenToBlack \{time = 0.4
		viewport = ui}
	KillSpawnedScript \{id = ScreenToBlack}
	SpawnScriptLater Call_ScreenToBlack id = ScreenToBlack params = {<...>}
endscript

script Call_ScreenToBlack 
	time = (0.5 * <time>)
	SpawnScriptLater Do_ScreenToBlack id = ScreenToBlack params = {on time = <time> <...>}
	Wait <time> seconds
	SpawnScriptLater Do_ScreenToBlack id = ScreenToBlack params = {off time = <time> <...>}
endscript

script Do_ScreenToBlack 
	if NOT (<viewport> = 0)
		if NOT ViewportExists id = <viewport>
			return
		endif
	endif
	if GotParam \{on}
		if NOT ScreenFX_FxInstanceExists viewport = <viewport> name = blackFX
			ScreenFX_AddFXInstance {
				viewport = <viewport>
				name = blackFX
				($ScreenToBlack_TOD_Manager.screen_fx [0])
			}
		endif
		ScreenFX_UpdateFXInstanceParams {
			viewport = <viewport>
			name = blackFX
			time = <time>
			($ScreenToBlack_TOD_Manager.screen_fx [0])
			inner_radius = 0
			outer_radius = 0
			alpha = 1
		}
	else
		if ScreenFX_FxInstanceExists viewport = <viewport> name = blackFX
			ScreenFX_UpdateFXInstanceParams {
				viewport = <viewport>
				name = blackFX
				time = <time>
				($ScreenToBlack_TOD_Manager.screen_fx [0])
				inner_radius = 1
				outer_radius = 1.5
				alpha = 0
			}
			if GotParam \{off}
				Wait <time> seconds
				ScreenFX_RemoveFXInstance viewport = <viewport> name = blackFX
			endif
		endif
	endif
endscript

script Reset_Transition_FXandLighting 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_HOF
		popworldlights
		DisableLightGroup \{name = defaultgroup}
		kill \{prefix = Z_HOF_GFX_FX_BlueSmoke}
		kill \{prefix = Z_HOF_GFX_FX_GreenSmoke}
		kill \{prefix = Z_HOF_GFX_FX_YellowSmoke}
		kill \{name = Z_HOF_GFX_FX_Snow}
		kill \{name = Z_HOF_GFX_FX_DrummerGlow_01}
		kill \{name = Z_HOF_GFX_FX_DrummerSmoke_02}
		DestroyParticlesByGroupID \{groupID = PyroFountains
			ifEmpty = 0}
		DestroyParticlesByGroupID \{groupID = FireworksAmbient
			ifEmpty = 0}
		DestroyParticlesByGroupID \{groupID = FireworksLaunch
			ifEmpty = 0}
		DestroyParticlesByGroupID \{groupID = FireworksLaunchSmoke
			ifEmpty = 0}
		DestroyParticlesByGroupID \{groupID = FireworksLaunch03
			ifEmpty = 0}
		DestroyParticlesByGroupID \{groupID = FireworksLaunchSmoke03
			ifEmpty = 0}
		DestroyParticlesByGroupID \{groupID = FireworksLaunchSmoke04
			ifEmpty = 0}
		DestroyParticlesByGroupID \{groupID = FireworksLaunchSmoke04
			ifEmpty = 0}
		SetDynamicShadowIntensity \{i = 0.35000002}
		case z_Fenway
		popworldlights
		DisableLightGroup \{name = defaultgroup}
		kill \{prefix = z_fenway_GFX_FX_BandTrans}
		SetShadowDirFromLight \{name = Z_Fenway_GFX_L_Band_Center_Direct01}
		case z_MaxsKC
		popworldlights
		DisableLightGroup \{name = defaultgroup}
		kill \{prefix = Z_MaxsKC_GFX_FX_BandTrans_Smoke}
		case z_JPPlay
		popworldlights
		DisableLightGroup \{name = defaultgroup}
		SetShadowDirFromLight \{name = Z_JPPlay_GFX_L_Band_Center_Direct01}
		DestroyParticlesByGroupID \{groupID = AE_Pyro
			ifEmpty = 0}
		DestroyParticlesByGroupID \{groupID = PyroFountains
			ifEmpty = 0}
		case z_soundcheck
		popworldlights
		DisableLightGroup \{name = defaultgroup}
		case z_Nine_Lives
		popworldlights
		DisableLightGroup \{name = defaultgroup}
		SafeKill \{nodeName = Z_nine_lives_GFX_FX_BandTrasition_Smoke_01}
		SafeKill \{nodeName = Z_nine_lives_GFX_FX_BandTrasition_Glow_01}
		case z_nipmuc
		popworldlights
		DisableLightGroup \{name = defaultgroup}
		SetShadowDir \{heading = 15
			pitch = 45.0}
		kill \{prefix = Z_Nipmuc_GFX_FX_Fog}
		kill \{prefix = Z_Nipmuc_GFX_Party}
	endswitch
endscript
