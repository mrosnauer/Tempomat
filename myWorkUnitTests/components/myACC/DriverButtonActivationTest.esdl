package components.myACC;
import myWork.accButtonLogic;
import myWork.deactivateOnBrake;


import assertLib.Assert;

static class DriverButtonActivationTest {
	accButtonLogic instance;
	
	@Test
	public void driverActionAndActive() {
		boolean driverAction = true;
		boolean buttonIn = true;
		boolean accActiveOut = instance.calc(driverAction, buttonIn);
		Assert.assertFalse(accActiveOut);
	}
	
	@Test
	public void noDriverActionAndButton() {
		boolean driverAction = false;
		boolean buttonIn = true;
		boolean accActiveOut = instance.calc(driverAction, buttonIn);
		Assert.assertTrue(accActiveOut);
	}
	
	@Test
	public void driverActionAndNoButton() {
		boolean driverAction = true;
		boolean buttonIn = false;
		boolean accActiveOut = instance.calc(driverAction, buttonIn);
		Assert.assertFalse(accActiveOut);
	}
	
	@Test
	public void noDriverActionAndNoButton() {
		boolean driverAction = false;
		boolean buttonIn = false;
		boolean accActiveOut = instance.calc(driverAction, buttonIn);
		Assert.assertFalse(accActiveOut);
	}
	
	
	
} 