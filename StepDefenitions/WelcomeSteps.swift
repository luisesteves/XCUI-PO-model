import Foundation

class WelcomeSteps: UIStepDefiner {
    override init() {
        super.init()
    
        //MARK: Given
        
        //MARK: When
        
        //MARK: Then
        createStep(withName: "I should the the welcome screen") {
            guard let welcomeScren = $0[.welcome] as? WelcomeScreen else {
                assertionFailure("unexpected screen")
                return
            }
            welcomeScreen.await()
        }
    }
}
