package myWork;
import resources.DriverMessages;

static class myDriver
writes DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.up, DriverMessages.down, DriverMessages.activate {
	characteristic real p = 0.0;
	characteristic boolean speed_gain = false;
	characteristic boolean speed_loss = false;
	characteristic boolean acitvate = false;

	@generated("blockdiagram")
	@thread
	public void drive() {
		DriverMessages.powerDriver = p; // Main/drive 1
		DriverMessages.brakeDriver = 0.0; // Main/drive 2
		DriverMessages.up = speed_gain; // Main/drive 3
		DriverMessages.down = speed_loss; // Main/drive 4
		DriverMessages.activate = acitvate; // Main/drive 5
	}
}