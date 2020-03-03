package components.myACC;
import myWork.myACC;


import assertLib.Assert;

static class SelfActivateTest {
	//myACC instance;
	
	@Test 
	public void selfActivate() {
		real counter = 0.0;
		myACC.internalActive = false;		
		while(counter < 10000.0) {
			if (myACC.internalActive) {
				break;
			}
			counter += 1.0;
		}
		Assert.assertFalse(myACC.internalActive);
	}
	
}