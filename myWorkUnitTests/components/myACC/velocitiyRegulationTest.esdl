package components.myACC;

import myWork.velocityRegulation;


import assertLib.Assert;
import resources.DriverMessages;

static class velocityRegulationTest {
	velocityRegulation instance;
	@Test
	public void highDifference() {
		real v = 10.0;
		real targetSpeed = 50.0;
		real powerdriver = instance.calc(targetSpeed, v);
		Assert.assertDoubleEqual(powerdriver, 70.0);
	}
	
	public void lowDifference() {
		real v = 10.0;
		real targetSpeed = 11.0;
		real powerdriver = instance.calc(targetSpeed, v);
		Assert.assertDoubleEqual(powerdriver, 1.0);
	}
	
} 