package myWork;
import resources.CarMessages;
import resources.DriverMessages;
@generated("statemachine")
type AutomatedDriverTestSMStatemachineStates is enum {
	Initial,
	Error
};

class AutomatedDriverTestSM {
	@set
	private real brakeDriver;
	@set
	private real accelDriver;
	@set
	private boolean accActive;
	@set
	private real vehicleSpeed;
	@set
	private real targetSpeed;
	@set
	private real carAccPos;
	@set
	private real carBrakePos;
	@get
	private boolean testResult = true;

	@generated("statemachine")
	public void automatedDriverTestSMStatemachineTrigger() triggers AutomatedDriverTestSMStatemachine;

	@generatedStateMachine
	statemachine AutomatedDriverTestSMStatemachine using AutomatedDriverTestSMStatemachineStates {
		start Initial;

		state Initial {
			transition brakeDriver > 0.0 && accActive == true to Error;
			transition accActive == true && carBrakePos > 0.0 && accelDriver > 0.0 to Error;
		}

		state Error {
			static {
				testResult = false;
			}
		}
	}
}