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
    
    override init(uiTestCase: UITestCase) {
        super.init(uiTestCase: uiTestCase)
        elementScreen = app.collectionViews[Constants.accLabelScreen]
    }
    
    func validate() {
        //your validations
    }
    
    //MARK: Screen interations
    
    func setMy(username: String) {
        
    }
}
