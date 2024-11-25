//
//  UiElements.swift
//  Kalculator
//
//  Created by Mr. Yog  on 25/11/24.
//  Copyright © 2024 Jogendra Singh. All rights reserved.
//

import XCTest

public class UiElementsTests: BaseTest{
    
    // Generic UI Element Types
    func button(_ title: String) -> XCUIElement {
        return app.buttons[title]
    }

    func staticText(_ label: String) -> XCUIElement {
        return app.staticTexts[label]
    }

    func textField(_ placeholder: String) -> XCUIElement {
        return app.textFields[placeholder]
    }

    func secureTextField(_ placeholder: String) -> XCUIElement {
        return app.secureTextFields[placeholder]
    }

    func image(_ identifier: String) -> XCUIElement {
        return app.images[identifier]
    }

    func link(_ label: String) -> XCUIElement {
        return app.links[label]
    }

    func switchControl(_ label: String) -> XCUIElement {
        return app.switches[label]
    }

    func slider(_ label: String) -> XCUIElement {
        return app.sliders[label]
    }

    func picker(_ label: String) -> XCUIElement {
        return app.pickers[label]
    }

    func stepper(_ label: String) -> XCUIElement {
        return app.steppers[label]
    }

    func progressIndicator(_ label: String) -> XCUIElement {
        return app.progressIndicators[label]
    }

    func activityIndicator(_ label: String) -> XCUIElement {
        return app.activityIndicators[label]
    }

    func collectionView(_ identifier: String) -> XCUIElement {
        return app.collectionViews[identifier]
    }

    func tableView(_ identifier: String) -> XCUIElement {
        return app.tables[identifier]
    }

    func tableCell(_ identifier: String) -> XCUIElement {
        return app.cells[identifier]
    }

    func scrollView(_ identifier: String) -> XCUIElement {
        return app.scrollViews[identifier]
    }

    func toolbar(_ identifier: String) -> XCUIElement {
        return app.toolbars[identifier]
    }

    func navigationBar(_ identifier: String) -> XCUIElement {
        return app.navigationBars[identifier]
    }

    func tabBar(_ identifier: String) -> XCUIElement {
        return app.tabBars[identifier]
    }

    func tab(_ label: String) -> XCUIElement {
        return app.tabs[label]
    }

    func segmentedControl(_ label: String) -> XCUIElement {
        return app.segmentedControls[label]
    }

    func alert(_ identifier: String) -> XCUIElement {
        return app.alerts[identifier]
    }

    func window(_ identifier: String) -> XCUIElement {
        return app.windows[identifier]
    }

    func other(_ identifier: String) -> XCUIElement {
        return app.otherElements[identifier]
    }

    // Custom Element
    func customElement(_ identifier: String) -> XCUIElement {
        return app.otherElements[identifier]
    }
    
}
