import Foundation
import XCTest

typealias ScreenMap = [ScreenType : Screen]
typealias StepClosure = ([ScreenType : Screen]) -> ()
typealias UITestCaseGherkinSteps = [String : StepClosure]

class UIStepDefiner {
    private(set) var uiTestCaseGherkinSteps = UITestCaseGherkinSteps()
    
    func createStep(withName name: String, _ body: @escaping StepClosure ) {
        assert(uiTestCaseGherkinSteps[name] == nil, "Already have a test with name \'\(name)\'")
        uiTestCaseGherkinSteps[name] = body
    }
}
