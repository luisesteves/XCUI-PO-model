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
    
    override init(uiTestCase: UITestCase) {
        super.init(uiTestCase: uiTestCase)
        elementScreen = app.collectionViews[Constants.accLabelScreen]
    }
    
    func validate() {
        //your validations
    }
    
    //MARK: Screen interations
    func makeLogin() {
        app.buttons[Constants.accLabelLoginButton].tap()
    }
}
