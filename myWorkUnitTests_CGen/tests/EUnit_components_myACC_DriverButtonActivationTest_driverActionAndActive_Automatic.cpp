// THIS IS A GENERATED FILE => DO NOT EDIT
#include <gtest/gtest.h>

extern "C" {
	#include "myWork_accButtonLogic_Automatic.h"
	#include "components_myACC_DriverButtonActivationTest_driverActionAndActive_Automatic.h"
}

namespace {
	// test fixture class
	class components_myACC_DriverButtonActivationTest_driverActionAndActive_Automatic_SubClass: public ::testing::Test {
		// TODO
	};

	TEST_F(components_myACC_DriverButtonActivationTest_driverActionAndActive_Automatic_SubClass, components_myACC_DriverButtonActivationTest_driverActionAndActive_Automatic_driverActionAndActive) {
		/* user defined local variables */
		uint8 accActiveOut;
		uint8 buttonIn;
		uint8 driverAction;

		driverAction = true;
		buttonIn = true;
		accActiveOut = myWork_accButtonLogic_Automatic_calc(driverAction, buttonIn);
		ASSERT_FALSE(accActiveOut);
	}

}