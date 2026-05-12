GP_FX_LoseSparks_01 = {
	pos = (0.033084, 0.0, -0.133042)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	bone = Bone_Guitar_Body
	EmitRangeDims = (0.05, 0.0, 0.05)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -4.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	ElevSpread = (90.0, 240.0)
	SweepSpread = (0.0, 360.0)
	BounceHeight = 0.03
	BounceCoeff = 0.3
	BounceCallbackRate = 0.0
	LifeRange = (5.0, 5.0)
	emit_rate = 3.0
	max = 0
	TimeSeed = 0.5
	lifeTime = 5.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = onoff
	EmitPeriod = 2.3
	SizeRange = [
		(0.02, 0.0)
		(0.0, 0.0)
	]
	SpeedRange = (0.7, 1.8)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	AlignWithPath
	PathFollowTime = 0.08
	History = 2
	HistoryListCoordinateSpace = world
	color = -9559553
	LOD_Distances = (20.0, 30.0)
	NoVisibilityTest
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_Spark01
		SpecularPower = 0
		alphacutoff = 16
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(-0.46765104, 0.0, -0.0)
		(-0.46765104, 0.0, -0.0)
		(-0.245908, 0.0, -0.0)
		(-0.024164999, 0.0, -0.0)
		(0.197577, 0.0, -0.0)
		(0.287602, 0.0, -0.0)
		(0.37762702, 0.0, -0.0)
		(0.46765104, 0.0, -0.0)
		(0.46765104, 0.0, -0.0)
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
		0.7112439
		1.0
	]
}
