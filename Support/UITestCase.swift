import Foundation
import XCTest

class UITestCase: XCTestCase {
    let app = XCUIApplication()
    
    var loginScreen: LoginScreen!
    var welcomeScreen: WelcomeScreen!
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = true
        app.launch()
        
        loginScreen = LoginScreen(self)
        welcomeScreen = WelcomeScreen(self)
    }
}
