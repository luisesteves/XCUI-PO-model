import Foundation
import XCTest

class LoginSteps: UIStepDefiner {
    override init() {
        super.init()
        
        //MARK: Given
        createStep(withName: "I am in the login screen") {
            guard let loginScreen = $0[.login] as? LoginScreen else {
                assertionFailure("unexpected screen")
                return
            }
            loginScreen.await()
        }
        
        //MARK: When
        createStep(withName: "I touch the login button") {
            guard let loginScreen = $0[.login] as? LoginScreen else {
                assertionFailure("unexpected screen")
                return
            }
            loginScreen.makeLogin()
        }
        
        //MARK: Then
    }
}
