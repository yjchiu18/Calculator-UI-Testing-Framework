//
//  NumberSelectTests.swift
//  Kalculator
//
//  Created by Mr. Yog  on 24/11/24.
//  Copyright © 2024 Jogendra Singh. All rights reserved.
//
import XCTest

class NumberSelectTests: XCTestCase {
    let app = XCUIApplication()
    let calculator = CalculatorPage()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
                app.terminate()
                super.tearDown()
    }
  
    func testAdditionOperation() {
            calculator.tapOne()
                      .tapPlus()
                      .tapTwo()
                      .tapEquals()
        }
        
        func testSubtractionOperation() {
            calculator.tapFive()
                      .tapMinus()
                      .tapTwo()
                      .tapEquals()
        }
        
        func testMultiplicationOperation() {
            calculator.tapThree()
                      .tapMultiply()
                      .tapFour()
                      .tapEquals()
        }
        
        func testDivisionOperation() {
            calculator.tapEight()
                      .tapDivide()
                      .tapTwo()
                      .tapEquals()
        }
        
        func testClearOperation() {
            calculator.tapOne()
                      .tapPlus()
                      .tapTwo()
                      .tapClear()
        }
}
    

