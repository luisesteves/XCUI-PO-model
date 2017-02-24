import Foundation
import XCTest

class UITestCase: XCTestCase {
    let app = XCUIApplication()
    
    private var uiTestCaseGherkinSteps = UITestCaseGherkinSteps()
    private static var firstUse: Bool = true
    private var screens: ScreenMap!
    
    static func isFirstUse() -> Bool {
        let fu = UITestCase.firstUse
        UITestCase.firstUse = false
        return fu
    }
    
    func set(screens: ScreenMap, with steps: [UIStepDefiner]) {
        self.screens = screens
        merge(steps: steps)
    }
    
    func Given(_ step: String) {
        executeStep(whithName: step, screens: screens)
    }
    
    func When(_ step: String) {
        executeStep(whithName: step, screens: screens)
    }
    
    func Then(_ step: String) {
        executeStep(whithName: step, screens: screens)
    }
    
    override func setUp() {
        super.setUp()
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        screens = nil
    }
    
    //MARK: private
    private func merge(steps: [UIStepDefiner]) {
        for composer in steps {
            //merge the steps
            for step in composer.uiTestCaseGherkinSteps {
                assert(uiTestCaseGherkinSteps[step.key] == nil, "Already have a test with name \'\(step.key)\'")
                self.uiTestCaseGherkinSteps[step.key] = step.value
            }
        }
    }
    
    private func executeStep(whithName name: String, screens: ScreenMap) {
        guard let gherkinStep = uiTestCaseGherkinSteps[name] else {
            assertionFailure("Step \'\(name)\' not found")
            return
        }
        
        //execute Gherkin step
        gherkinStep(screens)
    }
}
