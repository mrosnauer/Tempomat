package myWork;

class incDecTargetSpeed {
	const real gain_number = 1.0;
	real target_speed;
	const real const_number = 1.0;
	boolean old_up = false;
	boolean old_down = false;

	@generated("blockdiagram")
	public real calc(boolean in up, boolean in down, real in target_speed) {
		real new_target_speed = target_speed;
		if(old_up != up){ 
			if (up) {
				new_target_speed = (new_target_speed + const_number); // Main/calc 1/if-then 1
			} 
			// Main/calc 1
			old_up = up;
		}
		if(old_down != down){
			if (down) {
				new_target_speed = (new_target_speed - const_number); // Main/calc 2/if-then 1
			} // Main/calc 2
			old_down = down;
		}
		
		return new_target_speed;
	}
}