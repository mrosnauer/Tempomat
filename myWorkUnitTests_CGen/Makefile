# THIS IS A GENERATED FILE => DO NOT EDIT
# Objective: compile and link a unit test exectable
# Remark: contains hard dependencies to google test framework

OUTPUT_CONFIG=Debug
TEST_BASE_NAME=myWorkUnitTests
TEST_EXE=$(OUTPUT_CONFIG)/$(TEST_BASE_NAME).exe
MKDIR_CMD=mkdir -p

# Google test config
GOOGLE_TEST_INC=-IgoogleTestLib
GOOGLE_TEST_OUTDIR=$(OUTPUT_CONFIG)/googleTestLib/gtest
GOOGLE_TEST_OBJECTS=$(GOOGLE_TEST_OUTDIR)/gtest-all.o\
  $(OUTPUT_CONFIG)/tests/AllTests.o

INC=$(GOOGLE_TEST_INC) -Iinclude -Isrc -Itests
COMMON_FLAGS=-O0 -g3 -Wall -c -fmessage-length=0 -DSINGLE_THREADED
CPPFLAGS=$(COMMON_FLAGS)
CFLAGS=$(COMMON_FLAGS) -Wno-unused -ansi

MODEL_OBJECTS=$(OUTPUT_CONFIG)/src/myWorkUnitTests_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_activeACCAndBrake_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_activeACCAndNoBrake_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_inactiveACCAndNoBrake_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_inactiveACCAndBrake_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_driverActionAndActive_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_noDriverActionAndButton_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_driverActionAndNoButton_Automatic.o $(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_noDriverActionAndNoButton_Automatic.o $(OUTPUT_CONFIG)/src/assertLib_Assert_Impl.o $(OUTPUT_CONFIG)/src/myWork_deactivateOnBrake_Automatic.o $(OUTPUT_CONFIG)/src/myWork_accButtonLogic_Automatic.o 
LIB_PATHS=$(pathcnv SN, C:/Users/maxim/ETAS/ASCET-DEVELOPER-7.4.1/Tempomat/myWorkUnitTests_CGen/lib\
  C:/Users/maxim/ETAS/ASCET-DEVELOPER-7.4.1/Tempomat/myWorkUnitTests)
LIB_PATHS_OPTIONS := $(foreach PATH,$(LIB_PATHS),-L$(PATH))
LIB_FILES_OPTIONS=-lESDL_Linear_Interpolation_x86 

# Google test: compile rules google test gtest-all.cc
$(GOOGLE_TEST_OUTDIR)/gtest-all.o: googleTestLib/gtest/gtest-all.cc $(GOOGLE_TEST_OUTDIR)
	g++ $(INC) $(CPPFLAGS) -o $@ $<

# Google test: compile rules google test entry component AllTests.cpp
$(OUTPUT_CONFIG)/tests/AllTests.o: tests/AllTests.cpp $(OUTPUT_CONFIG)/tests
	g++ $(INC) $(CPPFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myWorkUnitTests_Automatic.o: src/myWorkUnitTests_Automatic.c src/myWorkUnitTests_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_Automatic.o: src/components_myACC_DeactivateOnBrakeTests_Automatic.c src/components_myACC_DeactivateOnBrakeTests_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_activeACCAndBrake_Automatic.o: src/components_myACC_DeactivateOnBrakeTests_activeACCAndBrake_Automatic.c src/components_myACC_DeactivateOnBrakeTests_activeACCAndBrake_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_activeACCAndNoBrake_Automatic.o: src/components_myACC_DeactivateOnBrakeTests_activeACCAndNoBrake_Automatic.c src/components_myACC_DeactivateOnBrakeTests_activeACCAndNoBrake_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_inactiveACCAndNoBrake_Automatic.o: src/components_myACC_DeactivateOnBrakeTests_inactiveACCAndNoBrake_Automatic.c src/components_myACC_DeactivateOnBrakeTests_inactiveACCAndNoBrake_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DeactivateOnBrakeTests_inactiveACCAndBrake_Automatic.o: src/components_myACC_DeactivateOnBrakeTests_inactiveACCAndBrake_Automatic.c src/components_myACC_DeactivateOnBrakeTests_inactiveACCAndBrake_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_Automatic.o: src/components_myACC_DriverButtonActivationTest_Automatic.c src/components_myACC_DriverButtonActivationTest_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_driverActionAndActive_Automatic.o: src/components_myACC_DriverButtonActivationTest_driverActionAndActive_Automatic.c src/components_myACC_DriverButtonActivationTest_driverActionAndActive_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_noDriverActionAndButton_Automatic.o: src/components_myACC_DriverButtonActivationTest_noDriverActionAndButton_Automatic.c src/components_myACC_DriverButtonActivationTest_noDriverActionAndButton_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_driverActionAndNoButton_Automatic.o: src/components_myACC_DriverButtonActivationTest_driverActionAndNoButton_Automatic.c src/components_myACC_DriverButtonActivationTest_driverActionAndNoButton_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/components_myACC_DriverButtonActivationTest_noDriverActionAndNoButton_Automatic.o: src/components_myACC_DriverButtonActivationTest_noDriverActionAndNoButton_Automatic.c src/components_myACC_DriverButtonActivationTest_noDriverActionAndNoButton_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/assertLib_Assert_Impl.o: src/assertLib_Assert_Impl.c src/assertLib_Assert_Impl.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myWork_deactivateOnBrake_Automatic.o: src/myWork_deactivateOnBrake_Automatic.c src/myWork_deactivateOnBrake_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myWork_accButtonLogic_Automatic.o: src/myWork_accButtonLogic_Automatic.c src/myWork_accButtonLogic_Automatic.h $(OUTPUT_CONFIG)/src
	gcc $(INC) $(CFLAGS) -o $@ $<


all:: $(TEST_EXE)

clean::
	rmdir $(OUTPUT_CONFIG)

$(GOOGLE_TEST_OUTDIR):
	$(MKDIR_CMD) $@

$(OUTPUT_CONFIG)/src:
	$(MKDIR_CMD) $@

$(OUTPUT_CONFIG)/tests:
	$(MKDIR_CMD) $@

$(TEST_EXE): $(GOOGLE_TEST_OUTDIR) $(OUTPUT_CONFIG)/src $(OUTPUT_CONFIG)/tests $(MODEL_OBJECTS) $(GOOGLE_TEST_OBJECTS)
	g++ -o $@ -static $(MODEL_OBJECTS) $(GOOGLE_TEST_OBJECTS) $(LIB_PATHS_OPTIONS) $(LIB_FILES_OPTIONS)
