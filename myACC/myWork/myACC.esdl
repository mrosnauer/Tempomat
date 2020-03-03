package myWork;
import resources.CarMessages;
import resources.DriverMessages;

static class myACC
reads resources.DriverMessages.powerDriver, resources.DriverMessages.brakeDriver, CarMessages.v, DriverMessages.up, DriverMessages.down, DriverMessages.accButtonPressed
writes resources.CarMessages.power, resources.CarMessages.brake, CarMessages.accActive {
	deactivateOnBrake deactivateOnBrake_instance;
	accButtonLogic accButtonLogic_instance;
	boolean internalActive;

	@generated("blockdiagram")
	@thread
	public void control() {
		if ((DriverMessages.powerDriver > 0.0) || (0.0 < DriverMessages.brakeDriver)) {
			CarMessages.power = DriverMessages.powerDriver; // Main/control 1/if-then 1
			CarMessages.brake = DriverMessages.brakeDriver; // Main/control 1/if-then 2
		} else {
			CarMessages.power = 0.0; // Main/control 1/if-else 1
			CarMessages.brake = 0.0; // Main/control 1/if-else 2
		} // Main/control 1
		if (accButtonLogic_instance.calc(((DriverMessages.powerDriver > 0.0) || (0.0 < DriverMessages.brakeDriver)), DriverMessages.accButtonPressed)) {
			internalActive = true; // Main/control 2/if-then 1
		} // Main/control 2
		CarMessages.accActive = deactivateOnBrake_instance.calc(internalActive, DriverMessages.brakeDriver); // Main/control 3
	}
}