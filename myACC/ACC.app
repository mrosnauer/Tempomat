application {
	class myCar.myCar
	class myWork.myDriver
	class myWork.myACC
	class myWork.automatedDriver
}
schedule {
	startup {
	}
	shutdown {
	}
	task Task0 priority 0 period 10ms delay 0ms {
		process myWork.automatedDriver.calc
		process myWork.myACC.control
		process myCar.myCar.calc
	}
}