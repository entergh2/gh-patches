GP_StarPower_AerosmithBones01 = {
	pos = (13.527851, 0.0, 0.265252)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = v
	active
	CreatedAtStart
	attach
	bone = Bone_Pelvis
	EmitRangeDims = (0.7, 0.7, 0.7)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 1.0
	PerParticleWind
	EmitterVelocityWeight = 0.0
	Radiate
	ElevSpread = (90.0, 90.0)
	SweepSpread = (0.0, 360.0)
	LifeRange = (2.0, 2.5)
	emit_rate = 2.0
	max = 0
	TimeSeed = 0.5
	lifeTime = 0.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.5, 0.1)
		(0.2, 0.1)
	]
	DepthRange = (0.3, 0.15)
	SpeedRange = (0.5, 1.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	align_to = (0.0, 1.0, 0.0)
	color = -1
	NoVisibilityTest
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_StarPower_AerosmithBones01
		SpecularPower = 0
		TwoSide
		alphacutoff = 48
		blendMode = blend
		Burn
		BurnValue = 0.3
		QuadAnimationFPS = 15
	}
	Knot = [
		(-5.710207, 0.0, -0.28551)
		(-5.710207, 0.0, -0.28551)
		(-5.3715625, 0.0, -0.26898497)
		(-5.032917, 0.0, -0.25246102)
		(-4.694272, 0.0, -0.235936)
		(-2.1073966, 0.0, -0.109706)
		(0.479479, 0.0, 0.016524997)
		(3.066355, 0.0, 0.142755)
		(3.9952242, 0.0, 0.142755)
		(4.9240932, 0.0, 0.142755)
		(5.852962, 0.0, 0.142755)
		(5.852962, 0.0, 0.142755)
	]
	ParticleColor = [
		-256
		-256
		-1
		-1
		-1
		-1
		-256
		-256
	]
	VertexWeight = [
		0.08788499
		0.759228
		1.0
	]
	UpdateScript = starPower_Butterflies
	params = {
		sMinW = 0.5
		sMaxW = 0.4
		eMinW = 0.2
		eMaxW = 0.2
		sMinH = 0.1
		sMaxH = 0.2
		eMinH = 0.04
		eMaxH = 0.04
		cycleTime = 0.5
		updateTime = 0.05
	}
}
