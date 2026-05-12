GP_FX_Dust_01 = {
	pos = (0.14138101, 3.6266632, 2.7954383)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	EmitRangeDims = (15.0, 5.0, 4.0)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 360.0
	LifeRange = (5.0, 8.0)
	emit_rate = 50.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.03, 0.03)
		(0.025, 0.025)
	]
	SpeedRange = (0.1, 0.2)
	RotVel = (0.5, -0.5)
	RotVelTimeScale = 0.2
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = -741825900
	LOD_Distances = (100.0, 100.0)
	NoVisibilityTest
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = PH_DustParticle
		SpecularPower = 0
		alphacutoff = 1
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(-1.074852, 0.0, 0.005928)
		(-1.074852, 0.0, 0.005928)
		(-0.829849, 0.0, 0.003293)
		(-0.584846, 0.0, 0.000659)
		(-0.33984303, 0.0, -0.0019760001)
		(-0.060592, 0.0, -0.0019760001)
		(0.218659, 0.0, -0.0019760001)
		(0.497909, 0.0, -0.0019760001)
		(0.63753504, 0.0, -0.0019760001)
		(0.77716005, 0.0, -0.0019760001)
		(0.91678596, 0.0, -0.0019760001)
		(0.91678596, 0.0, -0.0019760001)
	]
	ParticleColor = [
		-256
		-256
		-1
		-1
		-256
		-256
		-1
		-1
	]
	VertexWeight = [
		0.36906102
		0.7896869
		1.0
	]
}
