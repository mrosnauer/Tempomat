package components.myACC;

import myWork.driverACCPedalBehaviour;


import assertLib.Assert;

static class DriverACCPedalBehaviourTest {
	driverACCPedalBehaviour instance;
	
	@Test
	public void inactiveDriver() {
		const real power = 0.0;
		const real brake = 0.0;
		boolean putthrough = instance.calc(power, brake);
		Assert.assertFalse(putthrough);
	}
	
	@Test
	public void brakingDriver() {
		const real power = 0.0;
		const real brake = 0.1;
		boolean putthrough = instance.calc(power, brake);
		Assert.assertTrue(putthrough);
	}
	
	@Test
	public void acceleratingDriver() {
		const real power = 0.1;
		const real brake = 0.0;
		boolean putthrough = instance.calc(power, brake);
		Assert.assertTrue(putthrough);
	}
	
	@Test
	public void accelertingAndBrakingDriver() {
		const real power = 0.1;
		const real brake = 0.1;
		boolean putthrough = instance.calc(power, brake);
		Assert.assertTrue(putthrough);
	}
	
	
} 