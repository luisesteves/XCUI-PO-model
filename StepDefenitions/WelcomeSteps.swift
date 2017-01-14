import Foundation
import XCTest_Gherkin
import XCTest

class WelcomeSteps: StepDefiner {
    
    override func defineSteps()
    {
        guard let tester = test as? UITestCase else {
            return
        }
        
        step("I should the the welcome screen") {
            tester.welcomeScreen.await()
        }
    }
}
