package components.myACC;

import myWork.incDecTargetSpeed;


import assertLib.Assert;
import resources.DriverMessages;

static class incDecTargetSpeedTest {
	incDecTargetSpeed instance;
	
	@Test
	public void incrementTargetSpeed() {
		real targetSpeed = 50.0;
		boolean up = true;
		boolean down = false;
		targetSpeed = instance.calc(up, down, targetSpeed);
		Assert.assertEqual(targetSpeed, 51.0);
	}
	
	@Test
	public void decrementTargetSpeed() {
		real targetSpeed = 50.0;
		boolean up = false;
		boolean down = true;
		targetSpeed = instance.calc(up, down, targetSpeed);
		Assert.assertEqual(targetSpeed, 49.0);
	}
	
	@Test
	public void incDecTargetSpeed() {
		real targetSpeed = 50.0;
		boolean up = true;
		boolean down = true;
		targetSpeed = instance.calc(up, down, targetSpeed);
		Assert.assertEqual(targetSpeed, 50.0);
	}
	
	@Test
	public void doNothingTargetSpeed() {
		real targetSpeed = 50.0;
		boolean up = false;
		boolean down = false;
		targetSpeed = instance.calc(up, down, targetSpeed);
		Assert.assertEqual(targetSpeed, 50.0);
	}
	
} 