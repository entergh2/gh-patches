GP_StarPower_TeslaLightning01 = {
	pos = (-0.018327998, 0.0, -0.552211)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	attach
	bone = BONE_GUITAR_STRUM_POS
	EmitRangeDims = (0.5, 0.5, 0.5)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	Radiate
	AngleSpread = 360.0
	LifeRange = (0.2, 0.2)
	emit_rate = 24.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.3, 0.1)
		(0.2, 0.1)
	]
	SpeedRange = (4.0, 4.5)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	AlignWithPath
	PathFollowTime = 0.1
	History = 2
	HistoryListCoordinateSpace = world
	align_to = (1.0, 0.0, 0.0)
	color = -1
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_StarPower_TeslaLightning01
		SpecularPower = 0
		TwoSide
		alphacutoff = 24
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(0.0, 0.0, 6.0686016)
		(0.0, 0.0, 6.0686016)
		(0.0, 0.0, 2.9992483)
		(0.0, 0.0, -0.070106)
		(0.0, 0.0, -3.1394591)
		(0.0, 0.0, -4.2037907)
		(0.0, 0.0, -5.2681227)
		(0.0, 0.0, -6.332454)
		(0.0, 0.0, -6.332454)
	]
	ParticleColor = [
		-1
		-1
		-1
		-1
		-256
		-256
	]
	VertexWeight = [
		0.74252206
		1.0
	]
}
