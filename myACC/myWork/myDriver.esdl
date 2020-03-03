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
		DriverMessages.powerDriver = p; // Main/drive 1
		DriverMessages.up = speed_gain; // Main/drive 2
		DriverMessages.down = speed_loss; // Main/drive 3
		DriverMessages.accButtonPressed = accButtonDriver; // Main/drive 4
		DriverMessages.accButtonOffPressed = accButtonOffDriver; // Main/drive 5
		DriverMessages.brakeDriver = b; // Main/drive 6
	}
}