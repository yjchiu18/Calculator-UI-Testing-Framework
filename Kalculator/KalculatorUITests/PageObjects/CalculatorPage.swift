//
//  CalculatorPage.swift
//  Kalculator
//
//  Created by Mr. Yog  on 24/11/24.
//  Copyright © 2024 Jogendra Singh. All rights reserved.
//

import XCTest

public class CalculatorPage: BaseTest {
    
    override var rootElement: XCUIElement {
        return app.staticTexts["1"]
    }
    
    //pageElements
    //Number Buttons
    lazy var zeroButton = app.staticTexts["0"]
    lazy var oneButton = app.staticTexts["1"]
    lazy var twoButton = app.staticTexts["2"]
    lazy var threeButton = app.staticTexts["3"]
    lazy var fourButton = app.staticTexts["4"]
    lazy var fiveButton = app.staticTexts["5"]
    lazy var sixButton = app.staticTexts["6"]
    lazy var sevenButton = app.staticTexts["7"]
    lazy var eightButton = app.staticTexts["8"]
    lazy var nineButton = app.staticTexts["9"]

    //Operator Buttons
    lazy var clearButton = app.staticTexts["C"]
    lazy var deleteButton = app.staticTexts["DEL"]
    lazy var plusButton = app.staticTexts["+"]
    lazy var minusButton = app.staticTexts["-"]
    lazy var plusMinusButton = app.staticTexts["+-"]
    lazy var divideButton = app.staticTexts["/"]
    lazy var multiplyButton = app.staticTexts["*"]
    lazy var equalsButton = app.staticTexts["="]
    lazy var dotButton = app.staticTexts["."]

    //Actions

    @discardableResult
    func tapZero(completion: Completion = nil) -> Self {
        logger.log("Tap on 0")
        zeroButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapOne(completion: Completion = nil) -> Self {
        logger.log("Tap on 1")
        oneButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapTwo(completion: Completion = nil) -> Self {
        logger.log("Tap on 2")
        twoButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapThree(completion: Completion = nil) -> Self {
        logger.log("Tap on 3")
        threeButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapFour(completion: Completion = nil) -> Self {
        logger.log("Tap on 4")
        fourButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapFive(completion: Completion = nil) -> Self {
        logger.log("Tap on 5")
        fiveButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapSix(completion: Completion = nil) -> Self {
        logger.log("Tap on 6")
        sixButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapSeven(completion: Completion = nil) -> Self {
        logger.log("Tap on 7")
        sevenButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapEight(completion: Completion = nil) -> Self {
        logger.log("Tap on 8")
        eightButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapNine(completion: Completion = nil) -> Self {
        logger.log("Tap on 9")
        nineButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapClear(completion: Completion = nil) -> Self {
        logger.log("Tap on C (Clear)")
        clearButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapDelete(completion: Completion = nil) -> Self {
        logger.log("Tap on DEL (Delete)")
        deleteButton.tap()
        completion?()
        return self
    }
    
    @discardableResult
    func tapPlus(completion: Completion = nil) -> Self {
        logger.log("Tap on + (Plus)")
        plusButton.tap()
        completion?()
        return self
    }
    
    @discardableResult
    func tapMinus(completion: Completion = nil) -> Self {
        logger.log("Tap on - (Plus)")
        minusButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapPlusMinus(completion: Completion = nil) -> Self {
        logger.log("Tap on +- (Plus/Minus)")
        plusMinusButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapDivide(completion: Completion = nil) -> Self {
        logger.log("Tap on / (Divide)")
        divideButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapMultiply(completion: Completion = nil) -> Self {
        logger.log("Tap on * (Multiply)")
        multiplyButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapEquals(completion: Completion = nil) -> Self {
        logger.log("Tap on = (Equals)")
        equalsButton.tap()
        completion?()
        return self
    }

    @discardableResult
    func tapDot(completion: Completion = nil) -> Self {
        logger.log("Tap on . (Dot)")
        dotButton.tap()
        completion?()
        return self
    }
    
    func getResultText() -> String {
        let resultLabel = app.staticTexts["text"]
        return resultLabel.label
    }

}
