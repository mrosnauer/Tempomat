package myWork;
import resources.DriverMessages;
import resources.CarMessages;

static class AutomatedDriverTestBD
reads DriverMessages.brakeDriver, DriverMessages.powerDriver, CarMessages.accActive, CarMessages.v, DriverMessages.targetSpeed, CarMessages.power, CarMessages.brake {
	AutomatedDriverTestSM AutomatedDriverTestSM_instance;
	boolean testResult;

	@generated("blockdiagram")
	@thread
	public void calc() {
		AutomatedDriverTestSM_instance.brakeDriver = DriverMessages.brakeDriver; // Main/calc 1
		AutomatedDriverTestSM_instance.accActive = CarMessages.accActive; // Main/calc 2
		AutomatedDriverTestSM_instance.accelDriver = DriverMessages.powerDriver; // Main/calc 3
		AutomatedDriverTestSM_instance.vehicleSpeed = CarMessages.v; // Main/calc 4
		AutomatedDriverTestSM_instance.targetSpeed = DriverMessages.targetSpeed; // Main/calc 5
		AutomatedDriverTestSM_instance.carAccPos = CarMessages.power; // Main/calc 6
		AutomatedDriverTestSM_instance.carBrakePos = CarMessages.brake; // Main/calc 7
		AutomatedDriverTestSM_instance.automatedDriverTestSMStatemachineTrigger(); // Main/calc 8
		testResult = AutomatedDriverTestSM_instance.testResult; // Main/calc 9
	}
}