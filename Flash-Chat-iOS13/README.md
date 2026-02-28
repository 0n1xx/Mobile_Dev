# Flash Chat – Real-Time Messaging App

Flash Chat is a real-time messaging iOS application built with **Swift**, **UIKit**, and **Firebase**.  
The app allows users to register, log in, and exchange messages instantly in a shared chat room.

This project demonstrates authentication, cloud database integration, and real-time data updates.

---

## Features:

- User registration and login (Firebase Authentication)
- Real-time messaging
- Cloud-based message storage (Firebase Firestore)
- Automatic UI updates when new messages arrive
- Message sender identification
- Clean and modern chat interface
- MVC architecture

---

## Project Architecture:

The project follows the **Model–View–Controller (MVC)** design pattern.

### Model
- `Message.swift` – Represents the message data structure.

### View
- `Main.storyboard` – App interface layout.
- Custom TableView cells for chat messages.
- `Assets.xcassets` – App images and UI assets.

### Controller
- `WelcomeViewController.swift` – Initial screen.
- `RegisterViewController.swift` – Handles user registration.
- `LoginViewController.swift` – Handles user authentication.
- `ChatViewController.swift` – Manages chat logic and message display.

---

## Technologies Used:

- Swift
- UIKit
- Firebase Authentication
- Firebase Firestore
- UITableView
- CocoaPods
- Xcode
- iOS 13+

---

## Firebase Integration:

The app uses:

- **Firebase Authentication** – For secure user login and registration.
- **Cloud Firestore** – To store and retrieve chat messages in real time.

Messages are automatically synchronized across all connected users.

---

## How It Works:

1. The user registers or logs into the app.
2. After authentication, the user enters the chat screen.
3. When a message is sent:
   - It is saved to Firestore.
   - All active users instantly receive the update.
4. Messages are displayed in a TableView with different styling for the current user.

---

## Installation & Running:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/Flash-Chat-iOS13.git
   ```
2. Navigate to the project directory and install dependencies:
   ```bash
    pod install
   ```
3. Open Flash Chat.xcworkspace (not .xcodeproj).

## Project Structure:
   ```bash
Flash-Chat-iOS13/
│
├── Model/
│   └── Message.swift
│
├── Controller/
│   ├── WelcomeViewController.swift
│   ├── RegisterViewController.swift
│   ├── LoginViewController.swift
│   └── ChatViewController.swift
│
├── View/
│   ├── Main.storyboard
│   └── MessageCell.swift
│
├── Assets.xcassets
├── AppDelegate.swift
└── SceneDelegate.swift
   ```
   
## Learning Purpose:
This project was created to practice:
- Implementing Firebase Authentication
- Working with Cloud Firestore
- Handling real-time database updates
- Using UITableView for dynamic data
- Applying delegate patterns
- Structuring iOS apps using MVC
