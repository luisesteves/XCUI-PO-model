import Foundation
import XCTest

class WelcomeScreen: Screen, PageObject {
    
    private enum Constants {
        static let accLabelScreen = "welcome acc label"
        static let accLabelLoginButon = "login button acc label"
    }
    
    private var elementLoginScreen: XCUIElement {
        return app.collectionViews[Constants.accLabelScreen]
    }
    
    func await() {
        waitFor(element: Constants.accLabelScreen)
        XCTAssertTrue(elementLoginScreen.exists)
    }
    
    func validate() {

    }
}
