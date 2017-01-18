//
//  UIStepDefiner.swift
//  mobile_mrp_mrporter
//
//  Created by Luís Esteves on 18/01/2017.
//  Copyright © 2017 net-a-porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class UIStepDefiner: StepDefiner {
    var tester: UITestCase {
        guard let tester = test as? UITestCase else {
            assertionFailure("This should not happen")
            return UITestCase()
        }
        return tester
    }
}
