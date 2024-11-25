//
//  BaseTest.swift
//  Kalculator
//
//  Created by Mr. Yog  on 24/11/24.
//  Copyright © 2024 Jogendra Singh. All rights reserved.
//
import XCTest

class Logger {
    func log(_ mlog: String) {
        NSLog(mlog)
    }
}

public class BaseTest {
    typealias Completion = (() -> Void)?
    let app = XCUIApplication()
    let logger = Logger()
    
    required init(timeout: TimeInterval = 10, completion: Completion = nil) {
        logger.log("waiting \(timeout)s for \(String(describing: self)) existence")
        XCTAssert(rootElement.waitForExistence(timeout: timeout), "Root element not found")
    }
    
    var rootElement: XCUIElement {
        fatalError("Root element not found")
    }
}


