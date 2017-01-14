import Foundation
import XCTest

class Screen {
    let app: XCUIApplication
    let UITestCaseReference: UITestCase
    
    private let accLabelGoBack = "Back"
    
    private var elementGoBack: XCUIElement {
        return app.navigationBars.buttons[accLabelGoBack]
    }
    
    public init(_ UITestCaseReference: UITestCase) {
        self.app = UITestCaseReference.app
        self.UITestCaseReference = UITestCaseReference
    }
    
    func getVisibilityOf(element: XCUIElement) -> Bool {
        guard element.exists && !element.frame.isEmpty else {
            return false
        }
        
        return app.windows.element(boundBy: 0).frame.contains(element.frame)
    }
    
    func waitFor(element: XCUIElement, timeout: Int = 5) {
        let existsPredidate = NSPredicate(format: "exists == true")
        UITestCaseReference.expectation(for: existsPredidate, evaluatedWith: element, handler: nil)
        UITestCaseReference.waitForExpectations(timeout: TimeInterval(timeout), handler: nil)
    }
}
