# Mobile_Dev – iOS Applications Portfolio

This repository contains a collection of iOS applications built with **Swift** as part of my iOS development learning journey.

Each project focuses on core iOS concepts including MVC architecture, networking, Firebase integration, timers, state management, and UI development using UIKit.

# Projects

## EggTimer:

A simple timer application that allows users to select egg hardness (Soft, Medium, Hard) and starts a countdown with a progress bar and sound notification.

**Key Concepts:**
- Timer class
- Progress bar updates
- AVFoundation (sound playback)
- MVC architecture
- UI state management

Folder: `EggTimer`

---

## BMI Calculator:

An interactive BMI calculator that computes body mass index based on height and weight and provides health advice.

**Key Concepts:**
- MVC architecture
- Struct-based modeling
- Data passing between ViewControllers
- Dynamic UI updates

Folder: `BMI-Calculator-iOS13`

---

## Clima – Weather App:

A weather application that fetches real-time weather data using a public API and displays current conditions for a selected city or the user's location.

**Key Concepts:**
- REST API integration
- URLSession networking
- JSON parsing with Codable
- CoreLocation
- Delegate pattern

Folder: `Clima-iOS13`

---

## Flash Chat – Real-Time Messaging App:

A real-time messaging application built with Firebase Authentication and Cloud Firestore.

Users can register, log in, and exchange messages instantly.

**Key Concepts:**
- Firebase Authentication
- Cloud Firestore
- Real-time database updates
- UITableView with dynamic data
- CocoaPods dependency management

Folder: `Flash-Chat-iOS13`

---

## Quizzler:

A multiple-choice quiz application that tracks user progress and score.

**Key Concepts:**
- MVC pattern
- Business logic separation
- Struct-based models
- Progress tracking

Folder: `Quizzler-iOS13`

---

# Technologies Used:

- Swift
- UIKit
- Xcode
- MVC Architecture
- URLSession
- CoreLocation
- Firebase (Auth & Firestore)
- CocoaPods
- AVFoundation

---

# How to Run a Project

1. Clone the repository:

```bash
git clone https://github.com/On1xx/Mobile_Dev.git
```
2. Navigate to the desired project folder.
3. Open the .xcodeproj file in Xcode.

For Flash Chat, run:
```bash
pod install
```
Then open the .xcworkspace file.

# Purpose of This Repository:
This repository serves as:
- A learning archive
- A showcase of iOS development skills
- A portfolio of practical Swift applications
- Demonstration of working with APIs and Firebase
