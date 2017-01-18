import Foundation

class WelcomeSteps: UIStepDefiner {
    
    override func defineSteps()
    {   
        step("I should the the welcome screen") {
            self.tester.welcomeScreen.await()
        }
    }
}
