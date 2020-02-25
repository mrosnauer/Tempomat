package myCar;
import resources.contType;
import resources.curve_cont;
import resources.map_cont_cont;
import resources.TimeTick;

class myDrive_2
using Impl {
	characteristic curve_cont AirFriction = {{0.0, 30.0, 60.0, 90.0, 120.0, 150.0}, {0.0, -0.1, -0.2, -0.4, -0.8, -1.6}};
	contType brakebuff = 0.0;
	characteristic curve_cont BrakeMomentum = {{0.0, 1.0, 40.0, 60.0, 80.0, 100.0}, {0.0, 0.0, -1.0, -2.0, -3.0, -4.0}};
	contType cont = 0.0;
	contType dh = 0.0;
	contType ds = 0.0;
	characteristic map_cont_cont EngineMomentum = {{0.0, 5.0, 20.0, 60.126582278481, 80.0, 100.0}, {0.0, 30.0, 60.0, 90.0, 150.0, 200.0}, {{0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, {0.849999999999999, 0.6000000000000001, 0.30000000000000004, 0.0, 0.0, 0.0}, {3.1500000000000004, 2.3499999999999988, 1.5500000000000012, 0.8000000000000009, 0.399999999999999, 0.0}, {4.5, 3.5999999999999996, 2.7, 1.5, 0.8999999999999999, 0.0}, {5.0, 4.5, 3.8000000000000096, 2.799999999999999, 1.899999999999999, 0.0}}};
	contType h = 0.0;
	characteristic curve_cont Landscape = {{0.0, 100.0, 145.569620253165, 202.53164556962025, 221.51898734177215, 240.0, 259.49367088607596, 300.0, 350.0, 400.0, 450.0, 500.0, 600.0, 700.0, 750.0, 800.0, 810.0, 850.0, 900.0, 1000.0, 1100.0, 1200.0, 1300.0, 1400.0, 1500.0, 1600.0, 1700.0, 1800.0, 1900.0, 2000.0, 2100.0, 2200.0, 2300.0, 2400.0, 2500.0, 2600.0, 2700.0, 2800.0, 2900.0, 3000.0, 3100.0, 3200.0, 3300.0, 3400.0, 3500.0, 3600.0, 3700.0, 3800.0, 3900.0, 4000.0, 4100.0, 4200.0, 4300.0, 4400.0, 4500.0, 4600.0, 4700.0, 4800.0, 4900.0, 5000.0, 5100.0, 5200.0, 5300.0, 5400.0, 5500.0, 5600.0, 5700.0, 5800.0, 5900.0, 6000.0, 6100.0, 6200.0, 6300.0, 6400.0, 6500.0, 6600.0, 6700.0, 6800.0, 6900.0, 7000.0, 7100.0, 7200.0, 7300.0, 7400.0, 7500.0, 7600.0, 7700.0, 7800.0, 7900.0, 8000.0, 8100.0, 8200.0, 8300.0, 8400.0, 8500.0, 8600.0, 8700.0, 8800.0, 8900.0, 9000.0, 9100.0, 9200.0, 9300.0, 9400.0, 9500.0, 9600.0, 9700.0, 9800.0, 9900.0, 10000.0, 10100.0, 10200.0, 10300.0, 10400.0, 10500.0, 10600.0, 10700.0, 10800.0, 10900.0, 11000.0, 11100.0, 11200.0, 11300.0, 11400.0, 11500.0, 11600.0, 11700.0, 11800.0}, {0.0, 4.0, 7.125, 10.375, 10.75, 10.5, 9.0, 5.375, 2.625, 0.625, 1.25, 0.625, 0.0, 0.0, 1.375, 0.75, 0.375, 0.625, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}};
	contType lastbrake = 0.0;
	@get
	contType momentum = 0.0;
	@get
	contType s = 0.0;
	characteristic contType TrackSize = 1000.0;
	contType v = 0.0;

	@generated("blockdiagram")
	public contType vCar(contType in powerCtrl, contType in brakeCtrl) {
		if (s > TrackSize) {
			s = 0.0; // Main/vCar 1/if-then 1
		} // Main/vCar 1
		momentum = EngineMomentum.getAt(powerCtrl, v); // Main/vCar 2
		ds = ((v * TimeTick.dTs) / 3.6); // Main/vCar 3
		s = (ds + s); // Main/vCar 4
		dh = (h - Landscape.getAt(s)); // Main/vCar 5
		h = Landscape.getAt(s); // Main/vCar 6
		v = (((BrakeMomentum.getAt(brakeCtrl) + momentum + AirFriction.getAt(v) + (9.81 * (dh / ds))) * TimeTick.dTs * 3.6) + v); // Main/vCar 7
		if (v < 0.0) {
			v = 0.0; // Main/vCar 8/if-then 1
		} // Main/vCar 8
		return v; // Main/vCar oo
	}

	public initializer Data() {
	}

	public initializer Data_Flat() {
		AirFriction = {{0.0, 30.0, 60.0, 90.0, 120.0, 150.0}, {0.0, -0.1, -0.2, -0.4, -0.8, -1.6}};
		brakebuff = 0.0;
		BrakeMomentum = {{0.0, 1.0, 40.0, 60.0, 80.0, 100.0}, {0.0, 0.0, -1.0, -2.0, -3.0, -4.0}};
		cont = 0.0;
		dh = 0.0;
		ds = 0.0;
		EngineMomentum = {{0.0, 5.0, 20.0, 60.126582278481, 80.0, 100.0}, {0.0, 30.0, 60.0, 90.0, 150.0, 200.0}, {{0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, {0.849999999999999, 0.6000000000000001, 0.30000000000000004, 0.0, 0.0, 0.0}, {3.1500000000000004, 2.3499999999999988, 1.5500000000000012, 0.8000000000000009, 0.399999999999999, 0.0}, {4.5, 3.5999999999999996, 2.7, 1.5, 0.8999999999999999, 0.0}, {5.0, 4.5, 3.8000000000000096, 2.799999999999999, 1.899999999999999, 0.0}}};
		h = 0.0;
		Landscape = {{0.0, 100.0, 145.569620253165, 202.53164556962025, 221.51898734177215, 240.0, 259.49367088607596, 300.0, 350.0, 400.0, 450.0, 500.0, 600.0, 700.0, 750.0, 800.0, 810.0, 850.0, 900.0, 1000.0, 1100.0, 1200.0, 1300.0, 1400.0, 1500.0, 1600.0, 1700.0, 1800.0, 1900.0, 2000.0, 2100.0, 2200.0, 2300.0, 2400.0, 2500.0, 2600.0, 2700.0, 2800.0, 2900.0, 3000.0, 3100.0, 3200.0, 3300.0, 3400.0, 3500.0, 3600.0, 3700.0, 3800.0, 3900.0, 4000.0, 4100.0, 4200.0, 4300.0, 4400.0, 4500.0, 4600.0, 4700.0, 4800.0, 4900.0, 5000.0, 5100.0, 5200.0, 5300.0, 5400.0, 5500.0, 5600.0, 5700.0, 5800.0, 5900.0, 6000.0, 6100.0, 6200.0, 6300.0, 6400.0, 6500.0, 6600.0, 6700.0, 6800.0, 6900.0, 7000.0, 7100.0, 7200.0, 7300.0, 7400.0, 7500.0, 7600.0, 7700.0, 7800.0, 7900.0, 8000.0, 8100.0, 8200.0, 8300.0, 8400.0, 8500.0, 8600.0, 8700.0, 8800.0, 8900.0, 9000.0, 9100.0, 9200.0, 9300.0, 9400.0, 9500.0, 9600.0, 9700.0, 9800.0, 9900.0, 10000.0, 10100.0, 10200.0, 10300.0, 10400.0, 10500.0, 10600.0, 10700.0, 10800.0, 10900.0, 11000.0, 11100.0, 11200.0, 11300.0, 11400.0, 11500.0, 11600.0, 11700.0, 11800.0}, {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}};
		lastbrake = 0.0;
		momentum = 0.0;
		s = 0.0;
		TrackSize = 1000.0;
		v = 0.0;
	}
	representation Impl {
		represent AirFriction using {
			datatype = float64;
		}
		-> {
			datatype = float64;
		};
		represent brakebuff using {
			datatype = float64;
		};
		represent vCar.brakeCtrl using {
			datatype = float64;
		};
		represent BrakeMomentum using {
			datatype = float64;
		}
		-> {
			datatype = float64;
		};
		represent cont using {
			datatype = float64;
		};
		represent dh using {
			datatype = float64;
		};
		represent ds using {
			datatype = float64;
		};
		represent EngineMomentum using {
			datatype = float64;
		}, {
			datatype = float64;
		}
		-> {
			datatype = float64;
		};
		represent h using {
			datatype = float64;
		};
		represent Landscape using {
			datatype = float64;
		}
		-> {
			datatype = float64;
		};
		represent lastbrake using {
			datatype = float64;
		};
		represent momentum using {
			datatype = float64;
		};
		represent vCar.powerCtrl using {
			datatype = float64;
		};
		represent vCar return using {
			datatype = float64;
		};
		represent s using {
			datatype = float64;
		};
		represent TrackSize using {
			datatype = float64;
		};
		represent v using {
			datatype = float64;
		};
	}
}