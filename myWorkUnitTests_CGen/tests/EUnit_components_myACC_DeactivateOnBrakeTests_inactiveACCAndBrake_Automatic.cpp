// THIS IS A GENERATED FILE => DO NOT EDIT
#include <gtest/gtest.h>

extern "C" {
	#include "myWork_deactivateOnBrake_Automatic.h"
	#include "components_myACC_DeactivateOnBrakeTests_inactiveACCAndBrake_Automatic.h"
}

namespace {
	// test fixture class
	class components_myACC_DeactivateOnBrakeTests_inactiveACCAndBrake_Automatic_SubClass: public ::testing::Test {
		// TODO
	};

	TEST_F(components_myACC_DeactivateOnBrakeTests_inactiveACCAndBrake_Automatic_SubClass, components_myACC_DeactivateOnBrakeTests_inactiveACCAndBrake_Automatic_inactiveACCAndBrake) {
		/* user defined local variables */
		uint8 accActiveIn;
		uint8 accActiveOut;
		float32 brake;

		brake = 0.0F;
		accActiveIn = false;
		accActiveOut = myWork_deactivateOnBrake_Automatic_calc(accActiveIn, brake);
		ASSERT_FALSE(accActiveOut);
	}

}