package myWork;

class accButtonLogic {
	@generated("blockdiagram")
	public boolean calc(boolean in driverAction, boolean in accButtonOnPressed, boolean in accButtonOffPressed) {
		if (accButtonOffPressed) {
			return false; // Main/calc 1/if-then 1
		} // Main/calc 1
		if ((!driverAction) && accButtonOnPressed) {
			return true; // Main/calc 2/if-then 1
		} // Main/calc 2
		return false; // Main/calc 3
	}
}