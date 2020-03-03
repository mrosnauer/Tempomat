package components.myACC;
import myWork.deactivateOnBrake;


import assertLib.Assert;
import resources.DriverMessages;

static class DeactivateOnBrakeTests {
	deactivateOnBrake instance;
	
	@Test
	public void activeACCAndBrake() {
		real brake = 5.0;
		boolean accActiveIn = true;
		boolean accActiveOut = instance.calc(accActiveIn, brake);
		Assert.assertFalse(accActiveOut);
	}
	
	@Test
	public void activeACCAndNoBrake() {
		real brake = 0.0;
		boolean accActiveIn = true;
		boolean accActiveOut = instance.calc(accActiveIn, brake);
		Assert.assertTrue(accActiveOut);
	}
	
	@Test
	public void inactiveACCAndNoBrake() {
		real brake = 0.0;
		boolean accActiveIn = false;
		boolean accActiveOut = instance.calc(accActiveIn, brake);
		Assert.assertFalse(accActiveOut);
	}
	
	@Test
	public void inactiveACCAndBrake() {
		real brake = 0.0;
		boolean accActiveIn = false;
		boolean accActiveOut = instance.calc(accActiveIn, brake);
		Assert.assertFalse(accActiveOut);
	}
	
} 