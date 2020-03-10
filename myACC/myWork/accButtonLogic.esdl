package myWork;

class accButtonLogic {
	@get
	real targetSpeed = 0.0;
	@get
	boolean previousButtonPressed;

	@generated("blockdiagram")
	public boolean calc(boolean in driverAction, boolean in accButtonOnPressed, boolean in accButtonOffPressed, real in v) {
		if (accButtonOffPressed) {
			return false; // Main/calc 1/if-then 1
		} // Main/calc 1
		if (((!previousButtonPressed) && (!driverAction)) && accButtonOnPressed) {
			targetSpeed = v; // Main/calc 2/if-then 1
			previousButtonPressed = true; // Main/calc 2/if-then 2
			return true; // Main/calc 2/if-then 3
		} // Main/calc 2
		if (!accButtonOnPressed) {
			previousButtonPressed = false; // Main/calc 3/if-then 1
		} // Main/calc 3
		return false; // Main/calc 4
	}
}