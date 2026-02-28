# Quizzler iOS App:

A simple and interactive quiz application built with **Swift** and **UIKit** following the **MVC (Model–View–Controller)** design pattern.  
The app presents multiple-choice questions, tracks user progress, and provides instant feedback.

## Features:

- Multiple-choice quiz questions
- Real-time answer validation
- Progress bar indicator
- Score tracking
- Clean and simple UI
- MVC architecture implementation
---

## Project Architecture:

The project follows the **MVC pattern** to maintain clean code structure and separation of concerns.

### Model
- `Question.swift` – Defines the question structure.
- `QuizBrain.swift` – Handles quiz logic, question management, and score calculation.

### View
- `Main.storyboard` – UI layout.
- `Assets.xcassets` – Images and app assets.

### Controller
- `ViewController.swift` – Manages user interaction and connects the View with the Model.
---

## Technologies Used:
- Swift
- UIKit
- Xcode
- iOS 13+
- MVC Design Pattern
---

## How It Works:

1. The app loads a predefined list of questions.
2. The user selects one of the answer options.
3. The app checks the answer using the `QuizBrain` logic.
4. The UI updates:
   - The score increases if the answer is correct.
   - The progress bar advances.
   - The next question is displayed.

---

## Installation & Running:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/Quizzler-iOS13.git
   ```

## 📂 Project Structure:
```bash
Quizzler-iOS13/
│
├── Model/
│   ├── Question.swift
│   └── QuizBrain.swift
│
├── Controller/
│   └── ViewController.swift
│
├── View/
│   └── Main.storyboard
│
├── Assets.xcassets
├── AppDelegate.swift
└── SceneDelegate.swift
```

## 📖 Learning Purpose:
This project was created to practice:
- Implementing the MVC architecture
- Struct-based data modeling in Swift
- Separating business logic from UI logic
- Managing state in an iOS application
- Updating UI dynamically based on user interaction
