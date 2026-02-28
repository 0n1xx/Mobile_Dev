# BMI Calculator iOS App

A simple and clean iOS application built with **Swift** and **UIKit** that calculates a user’s Body Mass Index (BMI) based on height and weight input.  
The app provides instant feedback along with health advice depending on the calculated BMI category.

## Features:

- Calculate BMI based on height and weight
- Instant result display
- Health advice based on BMI category
- Color-coded result screen
- Clean and user-friendly interface
- MVC architecture implementation

---

## Project Architecture:

The project follows the **Model–View–Controller (MVC)** design pattern for clear separation of concerns.

### Model
- `BMI.swift` – Represents the BMI data model.
- `CalculatorBrain.swift` – Contains BMI calculation logic and advice selection.

### View
- `Main.storyboard` – Defines the UI layout.
- `Assets.xcassets` – Images and visual assets.

### Controller
- `CalculateViewController.swift` – Handles user input and triggers calculation.
- `ResultsViewController.swift` – Displays the calculated BMI result and advice.

---

## Technologies Used:

- Swift
- UIKit
- MVC Design Pattern
- Xcode
- iOS 13+

---

## How It Works:

1. The user adjusts height and weight using sliders.
2. The app calculates BMI using the formula:
BMI = weight (kg) / height² (m²)


3. Based on the calculated value:
- The BMI number is displayed.
- Health advice is shown.
- The background color changes depending on the BMI category.

---

## Installation & Running:

1. Clone the repository:
```bash
git clone https://github.com/your-username/BMI-Calculator-iOS13.git
```

## Project Structure:
```bash
BMI-Calculator-iOS13/
│
├── Model/
│   ├── BMI.swift
│   └── CalculatorBrain.swift
│
├── Controller/
│   ├── CalculateViewController.swift
│   └── ResultsViewController.swift
│
├── View/
│   └── Main.storyboard
│
├── Assets.xcassets
├── AppDelegate.swift
└── SceneDelegate.swift
```

## Learning Purpose:
This project was created to practice:
- Implementing MVC architecture
- Struct-based data modeling in Swift
- Passing data between view controllers
- Performing calculations and updating UI dynamically
- Managing navigation flow in an iOS application
