# EggTimer iOS App:

A simple and intuitive iOS application built with **Swift** and **UIKit** that helps users cook eggs perfectly by selecting a desired level of doneness.  
The app uses a timer mechanism with a progress bar and sound notification when the cooking time is complete.

## Features:

- Select egg hardness level (Soft, Medium, Hard)
- Built-in countdown timer
- Animated progress bar
- Sound notification when the timer finishes
- Clean and user-friendly interface
- MVC architecture

---

## Project Architecture:

The project follows the **Model–View–Controller (MVC)** design pattern to ensure clean structure and separation of logic.

### Model
- `EggTimer.swift` – Contains cooking time data and timer logic.

### View
- `Main.storyboard` – Defines the UI layout.
- `Assets.xcassets` – App images and visual assets.

### Controller
- `ViewController.swift` – Handles user interaction, timer updates, and UI changes.

---

## Technologies Used:

- Swift
- UIKit
- AVFoundation (for sound playback)
- Timer class
- Xcode
- iOS 13+

---

## How It Works:

1. The user selects the desired egg hardness level.
2. The app starts a countdown timer based on predefined cooking times.
3. The progress bar updates dynamically as time passes.
4. When the timer reaches zero:
   - A sound is played.
   - The progress bar completes.
   - The user is notified that the egg is ready.

---

## Installation & Running:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/EggTimer.git
   ```
## Project Structure:
```bash
EggTimer/
│
├── Model/
│   └── EggTimer.swift
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

## Learning Purpose:
- This project was created to practice
- Working with the Timer class
- Updating UI elements over time
- Playing audio using AVFoundation
- Structuring apps using MVC
- Managing app state and user interaction
