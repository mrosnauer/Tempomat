package components.myACC;
import myWork.accButtonLogic;
import myWork.deactivateOnBrake;


import assertLib.Assert;

static class DriverButtonActivationTest {
	accButtonLogic instance;
	
	@Test
	public void noActionNoButton() {
		boolean driverAction = false;
		boolean accButtonOnPressed = false;
		boolean accButtonOffPressed = false;
		real speed = 0.0;
		boolean accActiveOut = instance.calc(driverAction, accButtonOnPressed, accButtonOffPressed, speed);
		Assert.assertFalse(accActiveOut);
	}
	
	@Test
	public void noActionOffButton() {
		boolean driverAction = false;
		boolean accButtonOnPressed = false;
		boolean accButtonOffPressed = true;
		real speed = 0.0;
		boolean accActiveOut = instance.calc(driverAction, accButtonOnPressed, accButtonOffPressed, speed);
		Assert.assertFalse(accActiveOut);
	}
	
	@Test
	public void noActionOnButton() {
		boolean driverAction = false;
		boolean accButtonOnPressed = true;
		boolean accButtonOffPressed = false;
		real speed = 0.0;
		boolean accActiveOut = instance.calc(driverAction, accButtonOnPressed, accButtonOffPressed, speed);
		Assert.assertTrue(accActiveOut);
	}
	
	
	@Test
	public void actionNoButton() {
		boolean driverAction = true;
		boolean accButtonOnPressed = false;
		boolean accButtonOffPressed = false;
		real speed = 0.0;
		boolean accActiveOut = instance.calc(driverAction, accButtonOnPressed, accButtonOffPressed, speed);
		Assert.assertFalse(accActiveOut);
	}
	
	
	@Test
	public void noActionOnAndOffButton() {
		boolean driverAction = false;
		boolean accButtonOnPressed = true;
		boolean accButtonOffPressed = true;
		real speed = 0.0;
		boolean accActiveOut = instance.calc(driverAction, accButtonOnPressed, accButtonOffPressed, speed);
		Assert.assertFalse(accActiveOut);
	}
	
	@Test
	public void actionOffButton() {
		boolean driverAction = true;
		boolean accButtonOnPressed = false;
		boolean accButtonOffPressed = true;
		real speed = 0.0;
		boolean accActiveOut = instance.calc(driverAction, accButtonOnPressed, accButtonOffPressed, speed);
		Assert.assertFalse(accActiveOut);
	}
	
	@Test
	public void actionOnButton() {
		boolean driverAction = true;
		boolean accButtonOnPressed = true;
		boolean accButtonOffPressed = false;
		real speed = 0.0;
		boolean accActiveOut = instance.calc(driverAction, accButtonOnPressed, accButtonOffPressed, speed);
		Assert.assertFalse(accActiveOut);
	}
	
	@Test
	public void actionOnOffButton() {
		boolean driverAction = true;
		boolean accButtonOnPressed = true;
		boolean accButtonOffPressed = true;
		real speed = 0.0;
		boolean accActiveOut = instance.calc(driverAction, accButtonOnPressed, accButtonOffPressed, speed);
		Assert.assertDoubleEqual(instance.targetSpeed, speed);
		Assert.assertFalse(accActiveOut);
	}
	
	
	
} 