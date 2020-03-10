package myWork;
import resources.CarMessages;
import resources.DriverMessages;

static class myACC
reads resources.DriverMessages.powerDriver, resources.DriverMessages.brakeDriver, CarMessages.v, DriverMessages.up, DriverMessages.down, DriverMessages.accButtonPressed, DriverMessages.accButtonOffPressed
writes resources.CarMessages.power, resources.CarMessages.brake, CarMessages.accActive {
	deactivateOnBrake deactivateOnBrake_instance;
	accButtonLogic accButtonLogic_instance;
	public boolean internalActive;
	incDecTargetSpeed incDecTargetSpeed_instance;
	const real c = 100.0;
	real v;
	real target_speed;
	driverACCPedalBehaviour driverACCPedalBehaviour_instance;

	@generated("blockdiagram")
	@thread
	@error("blockdiagram")
	public void control() {
		if (driverACCPedalBehaviour_instance.calc(DriverMessages.powerDriver, DriverMessages.brakeDriver)) {
			CarMessages.power = DriverMessages.powerDriver; // Main/control 1/if-then 1
			CarMessages.brake = DriverMessages.brakeDriver; // Main/control 1/if-then 2
		} else {
			CarMessages.power = 0.0; // Main/control 1/if-else 1
			CarMessages.brake = 0.0; // Main/control 1/if-else 2
		} // Main/control 1
		target_speed = incDecTargetSpeed_instance.calc(DriverMessages.up, DriverMessages.down, target_speed); // Main/control 2
		if (DriverMessages.accButtonOffPressed) {
			internalActive = false; // Main/control 5/if-then 1
		} // Main/control 5
		CarMessages.accActive = internalActive; // Main/control 6
	}
}