import Foundation
import XCTest_Gherkin
import XCTest

class LoginSteps: StepDefiner {
    
    override func defineSteps()
    {
        guard let tester = test as? UITestCase else {
            return
        }
        
        step("I am in the login screen") {
            tester.loginScreen.await()
        }
        
        step("I touch the login button") {
            tester.loginScreen.makeLogin()
        }
    }
}
