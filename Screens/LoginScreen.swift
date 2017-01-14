import Foundation
import XCTest

class LoginScreen: Screen, PageObject {
    
    private enum Constants {
        static let accLabelScreen = "login screen acc label"
        static let accLabelLoginButton = "login button acc label"
    }
    
    private var elementLoginScreen: XCUIElement {
        return app.collectionViews[accLabelScreen]
    }
    
    func await() {
        waitFor(element: Constants.accLabelScreen)
        XCTAssertTrue(elementLoginScreen.exists)
    }
    
    func validate() {
        //some code here
    }
    
    func makeLogin() {
        app.buttons[Constants.accLabelLoginButton].tap()
    }
}
