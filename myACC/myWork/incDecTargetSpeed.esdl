package myWork;

class incDecTargetSpeed {
	const real gain_number = 1.0;
	real target_speed;
	const real const_number = 1.0;

	@generated("blockdiagram")
	public real calc(boolean in up, boolean in down, real in target_speed) {
		real new_target_speed = target_speed;
		if (up) {
			new_target_speed = (target_speed + const_number); // Main/calc 1/if-then 1
		} // Main/calc 1
		if (down) {
			new_target_speed = (target_speed - const_number); // Main/calc 2/if-then 1
		} // Main/calc 2
		return new_target_speed;
	}
}