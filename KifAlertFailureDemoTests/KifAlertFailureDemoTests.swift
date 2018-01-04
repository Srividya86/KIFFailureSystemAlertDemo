//
//  KifAlertFailureDemoTests.swift
//  KifAlertFailureDemoTests
//
//  Created by Eric Cerney on 1/3/18.
//  Copyright © 2018 Capital One. All rights reserved.
//

import XCTest
import KIF

@testable import KifAlertFailureDemo

class KifAlertFailureDemoTests: XCTestCase {
    func testExample() {
        tester().tapView(withAccessibilityLabel: "PushButton")
        tester().tapView(withAccessibilityLabel: "ShowAlert")
        tester().acknowledgeSystemAlert()
    }
}

extension XCTestCase {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }

    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}

extension KIFTestActor {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }

    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}
