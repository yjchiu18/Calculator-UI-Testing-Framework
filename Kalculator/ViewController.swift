//
//  ViewController.swift
//  Kalculator
//
//  Created by JOGENDRA on 18/05/17.
//  Copyright © 2017 Jogendra Singh. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var resultScreen: UILabel!
    @IBOutlet var numberButtons: [UIButton]!

    var firstNumber = String()
    var secondNumber = String()
    var lastNumber = Int()
    var keyPressed = String()
    var isTypingNumber: Bool = false
    var operationTapped = String()
    var isOperationTapped : Bool = false
    var previousOperator = String()
    var midAnswer = Int()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize the calculator
        resultScreen.text = "0"
        resultScreen.accessibilityIdentifier = "resultScreen"
        lastNumber = 0
        isTypingNumber = false
        isOperationTapped = false

        print("Calculator initialized: resultScreen.text = \(String(describing: resultScreen.text))")

        // Check if resultScreen is properly connected
        if resultScreen == nil {
            print("WARNING: resultScreen is nil! IBOutlet may not be connected properly.")
        }

        // Set up button actions
        for button in numberButtons {
            button.addTarget(self, action: #selector(numberButton(_:)), for: .touchUpInside)
        }

        // Find and set up operation buttons
        let operationSymbols = ["+", "-", "*", "/"]
        for subview in view.subviews.flatMap({ $0.subviews.flatMap({ $0.subviews }) }) {
            if let button = subview as? UIButton, let title = button.currentTitle, operationSymbols.contains(title) {
                button.addTarget(self, action: #selector(operation(_:)), for: .touchUpInside)
                print("Connected operation button: \(title)")
            } else if let button = subview as? UIButton, let title = button.currentTitle, title == "=" {
                button.addTarget(self, action: #selector(equal(_:)), for: .touchUpInside)
                print("Connected equal button")
            } else if let button = subview as? UIButton, let title = button.currentTitle, title == "C" {
                button.addTarget(self, action: #selector(clearAll(_:)), for: .touchUpInside)
                print("Connected clear button")
            }
        }
    }

    @IBAction func numberButton(_ sender: Any) {
        print("Number button pressed")
        print("Before: isTypingNumber = \(isTypingNumber), lastNumber = \(lastNumber)")

        if let button = sender as? UIButton, let buttonTitle = button.currentTitle {
            print("Button title: \(buttonTitle)")

            if(!isTypingNumber){
                keyPressed = buttonTitle
                if let number = Int(keyPressed) {
                    lastNumber = lastNumber * 10 + number
                    resultScreen.text = String(lastNumber)
                    print("After: lastNumber = \(lastNumber), resultScreen.text = \(String(describing: resultScreen.text))")
                }
            } else {
                keyPressed = buttonTitle
                if let number = Int(keyPressed) {
                    lastNumber = lastNumber * 10 + number
                    // Only show the second number being typed, not the operation
                    resultScreen.text = String(lastNumber)
                    print("After: lastNumber = \(lastNumber), resultScreen.text = \(String(describing: resultScreen.text))")
                }
            }
        } else {
            print("Failed to get button title")
        }
    }

    @IBAction func operation(_ sender: Any) {
        if(!isOperationTapped){
            firstNumber = String(lastNumber)
            keyPressed = "0"
            lastNumber = 0
            isTypingNumber = true
            isOperationTapped = true
            operationTapped = (sender as AnyObject).currentTitle!!
            // Keep showing just the first number, don't show the operation
            resultScreen.text = firstNumber;
            previousOperator = operationTapped;
        }
        else{
            if(previousOperator == "+"){
                midAnswer = Int(firstNumber)! + lastNumber;
            }
            else if(previousOperator == "-"){
                midAnswer = Int(firstNumber)! - lastNumber;
            }
            else if(previousOperator == "X"){
                midAnswer = Int(firstNumber)! * lastNumber;
            }
            else if(previousOperator == "/"){
                if lastNumber == 0{

                    let alert = UIAlertController(title: "Alert", message: "Invalid Action!", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }else{
                midAnswer = Int(firstNumber)! / lastNumber;
                }
            }

            firstNumber = String(midAnswer);
            keyPressed = "0";
            operationTapped = (sender as AnyObject).currentTitle!!;
            previousOperator = operationTapped;
            // Keep showing just the result, don't show the operation
            resultScreen.text = firstNumber;
            lastNumber = 0;
        }
    }

    @IBAction func equal(_ sender: Any) {
        var result : Int

        secondNumber = String(lastNumber)
        keyPressed = "0"

        if(operationTapped == "+"){

            result = Int(firstNumber)! + Int(secondNumber)!
            resultScreen.text = String(result)
        }
        else if(operationTapped == "-"){

            result = Int(firstNumber)! - Int(secondNumber)!
            resultScreen.text = String(result)
        }
        else if(operationTapped == "X"){

            result = Int(firstNumber)! * Int(secondNumber)!
            resultScreen.text = String(result)
        }
        else if(operationTapped == "/"){
            if lastNumber == 0{

                let alert = UIAlertController(title: "Alert", message: "Invalid Action!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }else{
            result = Int(firstNumber)! / Int(secondNumber)!
            resultScreen.text = String(result)
            }
        }

        // Reset for next calculation
        lastNumber = 0
        isTypingNumber = false
        isOperationTapped = false
    }

    @IBAction func clearAll(_ sender: Any) {
        firstNumber = "0";
        secondNumber = "0";
        lastNumber = 0;
        isTypingNumber = false;
        isOperationTapped = false;
        resultScreen.text = "0";

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
