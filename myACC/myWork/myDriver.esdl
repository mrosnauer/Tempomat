package myWork;
import resources.DriverMessages;

static class myDriver
writes DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.up, DriverMessages.down, DriverMessages.accButtonPressed, DriverMessages.accButtonOffPressed {
	characteristic real p = 0.0;
	characteristic boolean speed_gain = false;
	characteristic boolean speed_loss = false;
	characteristic boolean accButtonDriver = false;
	characteristic boolean accButtonOffDriver = false;
	characteristic real b = 0.0;

	@generated("blockdiagram")
	@thread
	public void drive() {
	}
}