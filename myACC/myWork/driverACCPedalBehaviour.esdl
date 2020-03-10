package myWork;

class driverACCPedalBehaviour {
	@generated("blockdiagram")
	public boolean calc(real in power, real in brake) {
		return((power > 0.0) || (0.0 < brake)); // Main/calc 1
	}
}