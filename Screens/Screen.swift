import Foundation
import XCTest


enum ScreenType {
    case welcome
    case login
}

class Screen {
    let app: XCUIApplication
    private weak var uiTestCase: UITestCase?
    
    var elementScreen: XCUIElement
    
    init(uiTestCase: UITestCase) {
        self.app = uiTestCase.app
        self.uiTestCase = uiTestCase
        elementScreen = app.windows.element(boundBy: 0)
    }
    
    func scrollTo(element: XCUIElement) {
        while !visibility(of: element) {
            swipe(inDirection: .up)
        }
    }
    
    func visibility(of element: XCUIElement) -> Bool {
        guard element.exists && !element.frame.isEmpty else {
            return false
        }
        
        return app.windows.element(boundBy: 0).frame.contains(element.frame)
    }
    
    func wait(for element: XCUIElement, timeout: Int = 5) {
        let existsPredidate = NSPredicate(format: "exists == true")
        guard let uiTestCase = uiTestCase else {
            assertionFailure("UITestCase not defined")
            return
        }
        uiTestCase.expectation(for: existsPredidate, evaluatedWith: element, handler: nil)
        uiTestCase.waitForExpectations(timeout: TimeInterval(timeout), handler: nil)
    }
    
    func currentPage() -> Bool {
        return elementScreen.exists
    }
    
    func await() {
        wait(for: elementScreen)
        XCTAssertTrue(elementScreen.exists, "Screen not found")
    }
    
    enum SwipeDirection {
        case up
        case down
        case left
        case right
    }
    
    func swipe(inDirection: SwipeDirection) {
        switch inDirection {
        case .up:
            elementScreen.swipeUp()
        case .down:
            elementScreen.swipeDown()
        case .left:
            elementScreen.swipeLeft()
        case .right:
            elementScreen.swipeRight()
        }
    }
}
