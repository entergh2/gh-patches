GP_FX_Encore_LightningStrike_01 = {
	pos = (-3.0131917, 2.041534, 19.93271)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	EmitRangeDims = (0.0, 0.0, 0.0)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 45.0
	LifeRange = (0.05, 0.1)
	emit_rate = 6.0
	max = 4
	TimeSeed = 1.0
	lifeTime = 1.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = onoff
	EmitPeriod = 1.0
	SizeRange = [
		(40.0, 40.0)
		(40.0, 40.0)
	]
	SpeedRange = (0.0, 0.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	align_to = (0.0, 0.0, -1.0)
	color = -100682497
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = ph_lightning_01
		SpecularPower = 0
		alphacutoff = 1
		blendMode = Add
		SortGroup = 2
		DrawOrder = 1.0
		QuadAnimationFPS = 0
	}
	Knot = [
		(0.21021502, 0.0, -0.508583)
		(0.21021502, 0.0, -0.508583)
		(0.070071995, 0.0, -0.169527)
		(-0.070071, 0.0, 0.169528)
		(-0.210214, 0.0, 0.508583)
		(-0.210214, 0.0, 0.508583)
	]
	ParticleColor = [
		-1
		-1
		-1
		-1
	]
	VertexWeight = [
		1.0
	]
}
