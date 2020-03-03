package myWork;

class accButtonLogic {
	@generated("blockdiagram")
	public boolean calc(boolean in driverAction, boolean in accButtonAction) {
		return(!((!driverAction) && accButtonAction)); // Main/calc 1
	}
}