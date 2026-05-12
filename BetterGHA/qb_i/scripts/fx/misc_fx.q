jowBlue = 717488127
jowGreen = 771697407
jowOrange = -6149377
jowRed = -15061505
jowYellow = -3267073

script JOW_Stars 
	printf \{"*******************************************************************"}
	printf <...>
	printf \{"*******************************************************************"}
endscript

script SafeGetUniqueCompositeObjectID \{preferredID = safeFXID01}
	if NOT GotParam \{ObjID}
		GetUniqueCompositeObjectID preferredID = <preferredID>
		return uniqueID = <uniqueID>
	endif
	i = 0
	FormatText TextName = index '%i' i = <i>
	ExtendCRC <preferredID> <index> out = preferredID
	begin
	MangleChecksums a = <preferredID> b = <ObjID>
	if NOT ObjectExists id = <mangled_ID>
		return uniqueID = <preferredID>
	else
		i = (<i> + 1)
		FormatText TextName = index '%i' i = <i>
		ExtendCRC <preferredID> <index> out = preferredID
	endif
	repeat
endscript

script LoseFX_GuitarSmoke_01 
	Obj_GetID
	GetUniqueCompositeObjectID \{preferredID = FX_LoseSmoke_01}
	CreateParticleSystem name = <uniqueID> ObjID = <ObjID> bone = Bone_Guitar_Body params_Script = $GP_FX_LoseSmoke_01
endscript

script LoseFX_GuitarSparks_01 
	Obj_GetID
	GetUniqueCompositeObjectID \{preferredID = FX_LoseSparks_01}
	CreateParticleSystem name = <uniqueID> ObjID = <ObjID> bone = Bone_Guitar_Body params_Script = $GP_FX_LoseSparks_01
endscript

script SetLightIntensityOverTime \{i = 1.0
		time = 2.0
		stepTime = 0.05}
	targetI = <i>
	GetLightIntensity name = <name>
	numSteps = (<time> / <stepTime>)
	CastToInteger \{numSteps}
	stepSize = ((<targetI> - <i>) / <numSteps>)
	begin
	i = (<i> + <stepSize>)
	SetLightIntensity name = <name> intensity = <i>
	Wait <stepTime> seconds
	repeat (<numSteps> -1)
	SetLightIntensity name = <name> intensity = <targetI>
endscript
