import Foundation

class LoginSteps: UIStepDefiner {
    
    override func defineSteps()
    {   
        step("I am in the login screen") {
            self.tester.loginScreen.await()
        }
        
        step("I touch the login button") {
            self.tester.loginScreen.makeLogin()
        }
    }
}
