GP_FX_LoseSmoke_01 = {
	pos = (0.0, 0.0, -0.0)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	attach
	bone = Bone_Guitar_Body
	EmitRangeDims = (0.1, 0.0, 0.1)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	Radiate
	ElevSpread = (90.0, 90.0)
	SweepSpread = (0.0, 360.0)
	LifeRange = (1.5, 2.0)
	emit_rate = 0.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 12
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.2, 0.2)
		(0.8, 0.8)
	]
	SpeedRange = (0.3, 0.5)
	RotVel = (0.3, -0.3)
	RotVelTimeScale = 0.5
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = 1785093729
	LOD_Default
	QuickMaterial = {
		TextureLayout = Layout2x2
		DiffuseTextureEnabled
		DiffuseTexture = JOW_Steam02
		SpecularPower = 0
		alphacutoff = 1
		blendMode = blend
		SoftEdge
		SoftedgeScale = 0.5
		QuadAnimationFPS = 0
	}
	Knot = [
		(-0.375712, 0.0, -0.0)
		(-0.375712, 0.0, -0.0)
		(-0.33411002, 0.0, -0.0)
		(-0.292509, 0.0, -0.0)
		(-0.250907, 0.0, -0.0)
		(-0.144927, 0.0, -0.0)
		(-0.038946, 0.0, -0.0)
		(0.067034006, 0.0, -0.0)
		(0.177628, 0.0, -0.0)
		(0.288221, 0.0, -0.0)
		(0.39881402, 0.0, -0.0)
		(0.39881402, 0.0, -0.0)
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
		0.161137
		0.57163495
		1.0
	]
}
