package components.myACC;

import myWork.driverACCPedalBehaviour;


import assertLib.Assert;

static class DriverACCPedalBehaviourTest {
	driverACCPedalBehaviour instance;
	
	@Test
	public void inactiveDriver() {
		const real power = 0.0;
		const real brake = 0.0;
		boolean passThrough = instance.calc(power, brake);
		Assert.assertFalse(passThrough);
	}
	
	@Test
	public void brakingDriver() {
		const real power = 0.0;
		const real brake = 0.1;
		boolean passThrough = instance.calc(power, brake);
		Assert.assertTrue(passThrough);
	}
	
	@Test
	public void acceleratingDriver() {
		const real power = 0.1;
		const real brake = 0.0;
		boolean passThrough = instance.calc(power, brake);
		Assert.assertTrue(passThrough);
	}
	
	@Test
	public void accelertingAndBrakingDriver() {
		const real power = 0.1;
		const real brake = 0.1;
		boolean passThrough = instance.calc(power, brake);
		Assert.assertTrue(passThrough);
	}
	
	
} 