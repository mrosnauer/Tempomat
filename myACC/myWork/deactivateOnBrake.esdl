package myWork;

class deactivateOnBrake {
	@generated("blockdiagram")
	public boolean calc(boolean in accActiveIn, real in brake) {
		if (brake > 0.0) {
			return false; // Main/calc 1/if-then 1
		} else {
			return accActiveIn; // Main/calc 1/if-else 1
		} // Main/calc 1
	}
}