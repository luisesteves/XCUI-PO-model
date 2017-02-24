import Foundation

class EditorialFeature: UITestCase {

    override func setUp() {
        super.setUp()
        
        set(screens: [.login : loginScreen(uiTestCase: self),
                      .welcome : WelcomeScreen(uiTestCase: self)],
            with: [LoginSteps(), WelcomeSteps()])
    }
    
    func testJornalDailyNavigation() {
        Given("I am in the login screen")
        When("I touch the login button")
        Then("I should the the welcome screen")
    }
}
