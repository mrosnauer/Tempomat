package myWork;
import resources.curve_cont;

class velocityRegulation {
	characteristic curve_cont curve_cont_table = {{0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0, 25.0, 30.0, 40.0, 50.0, 70.0, 80.0, 90.0, 100.0, 150.0, 200.0}, {0.0, 1.0, 1.0, 1.5, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 5.0, 7.0, 9.0, 11.0, 13.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 50.0, 60.0, 70.0, 80.0, 100.0, 100.0, 100.0, 100.0, 100.0, 100.0}};
	characteristic real c = 0.0;
	const real c_2 = 0.0;
	boolean isGT;

	@generated("blockdiagram")
	public real calc(real in targetspeed, real in v) {
		if ((targetspeed - v) > 0.0) {
			return curve_cont_table.getAt((targetspeed - v)); // Main/calc 1/if-then 1
		} else {
			return 100.0; // Main/calc 1/if-else 1
		} // Main/calc 1
	}
}