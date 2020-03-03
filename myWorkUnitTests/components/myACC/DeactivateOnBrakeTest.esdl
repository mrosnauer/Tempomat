package components.myACC;


import assertLib.Assert;
import resources.DriverMessages;

static class DeactivateOnBrakeTests 
reads  DriverMessages.active
writes DriverMessages.brakeDriver, DriverMessages.active {
	
	
	@Test
	@thread
	public void activeACCAndBrake() {
		resources.DriverMessages.active = true;
		resources.DriverMessages.brakeDriver = 5.0;
		
	}
	
} 