
# Calculator UI Testing Framework

Welcome to the **Calculator UI Testing Framework**, an automated test suite designed to validate the functionality of a calculator application. This framework uses **XCTest** and is optimized for seamless integration and efficient testing of UI elements and operations on iOS devices.

## 📋 Table of Contents

- [Overview](#overview)  
- [Features](#features)  
- [Setup and Installation](#setup-and-installation)  
- [Usage](#usage)  
  - [Running Tests](#running-tests)  
  - [Test Cases](#test-cases)  
- [Structure](#structure)  
- [Contributing](#contributing)  
- [License](#license)  

---

## 🔍 Overview

This repository contains an automated testing suite that ensures the accuracy and reliability of the calculator app. It validates various operations like addition, subtraction, multiplication, and division while providing reusable, modular code for UI interactions.

---

## ✨ Features

- **UI Element Interactions:** Predefined methods to tap buttons and retrieve results.  
- **Operation Validation:** Tests to verify addition, subtraction, multiplication, and division.  
- **Reusable Components:** Easy-to-extend `Page Object Model` structure.  
- **Sequential Test Execution:** Run multiple operations on the same app instance.  
- **Error Logging:** Integrated logging for debugging and reporting.  

---

## ⚙️ Setup and Installation

### Prerequisites

1. **macOS**: Ensure macOS 13+ is installed.  
2. **Xcode**: Install Xcode 16.1 or later.  
3. **Simulator**: Use an iOS Simulator matching the app's deployment target.  

### Installation

1. Clone the repository:  
   ```bash
   git clone https://github.com/your-username/calculator-ui-tests.git
   cd calculator-ui-tests
   ```
2. Open the `CalculatorUITests.xcodeproj` file in Xcode.  
3. Build the project using:  
   - `Command + B`  

---

## 🚀 Usage

### Running Tests

1. **Via Xcode:**  
   - Select the test target `CalculatorUITests`.
   - Press `Command + U` to run all test cases.

2. **Command Line:**  
   Run the following command in the project directory:  
   ```bash
   xcodebuild -scheme CalculatorUITests -destination 'platform=iOS Simulator,name=iPhone 16 Pro' test
   ```

---

### Test Cases

#### Supported Operations
The framework validates the following operations:

| Operation       | Method Name              | Test Description                                         |
|------------------|--------------------------|---------------------------------------------------------|
| **Addition**     | `testAdditionOperation`  | Ensures correct addition output for input combinations. |
| **Subtraction**  | `testSubtractionOperation` | Validates subtraction results.                          |
| **Multiplication** | `testMultiplicationOperation` | Verifies multiplication functionality.                  |
| **Division**     | `testDivisionOperation`  | Confirms division outputs and handles edge cases.       |

#### Example Test Execution
```swift
func testAdditionOperation() {
    let calculator = CalculatorPage()
    calculator.tapOne()
              .tapPlus()
              .tapTwo()
              .tapEquals()
    
    let result = calculator.getResultText()
    XCTAssertEqual(result, "3", "Addition result is incorrect.")
}
```

---

## 📂 Structure

```plaintext
CalculatorUITests/
├── Pages/
│   ├── CalculatorPage.swift    # Page object with element definitions and interactions
│   └── BasePage.swift          # Base class with shared logic
├── Tests/
│   ├── NumberSelectTests.swift # Test cases for number selection and operations
├── Extensions/                 # Extensions for XCTest and utility methods
├── Resources/                  # App-specific resources and configurations
└── README.md                   # Documentation
```

---

## 🤝 Contributing

We welcome contributions to enhance this framework! Please follow these steps:

1. Fork the repository.  
2. Create a new feature branch:  
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes and push them:  
   ```bash
   git push origin feature-name
   ```
4. Submit a pull request.

For more details, check the [CONTRIBUTING.md](CONTRIBUTING.md) file.

---

## 📄 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## 👥 Authors

- **Your Name**  
  - [GitHub]([https://github.com/yogeshwankhede007])  
  - [LinkedIn]([https://www.linkedin.com/in/ywankhede/])

Feel free to reach out for any questions or suggestions!

