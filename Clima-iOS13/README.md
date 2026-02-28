# Clima – Weather App

A modern weather application built with **Swift** and **UIKit** that fetches real-time weather data from an external API and displays current weather conditions for a selected city or the user’s current location.

The app demonstrates networking, JSON parsing, and location services in iOS development.


## Features:

- Search weather by city name
- Get weather using current device location
- Real-time weather data from API
- Temperature display in Celsius
- Dynamic weather icons
- Clean and minimal UI
- MVC architecture

---

## Project Architecture:

The project follows the **Model–View–Controller (MVC)** pattern for clean and maintainable code structure.

### Model
- `WeatherModel.swift` – Defines weather data structure.
- `WeatherManager.swift` – Handles networking, API requests, and JSON parsing.

### View
- `Main.storyboard` – UI layout.
- `Assets.xcassets` – Weather icons and visual assets.

### Controller
- `WeatherViewController.swift` – Manages user input, location updates, and UI updates.

---

## Technologies Used:

- Swift
- UIKit
- CoreLocation (for GPS location)
- URLSession (for networking)
- JSON Decoding (Codable)
- Xcode
- iOS 13+

---

## API Integration:

The app fetches weather data from a public weather API using HTTP requests.  
JSON responses are parsed using Swift’s `Codable` protocol.

---

## How It Works:

1. The user either:
   - Enters a city name, or
   - Uses the location button to fetch weather for the current location.
2. The app sends a request to the weather API.
3. The JSON response is decoded into Swift models.
4. The UI updates with:
   - City name
   - Current temperature
   - Weather condition icon

---

## Installation & Running:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/Clima-iOS13.git
   ```

## Project Structure:
```bash
Clima-iOS13/
│
├── Model/
│   ├── WeatherModel.swift
│   └── WeatherManager.swift
│
├── Controller/
│   └── WeatherViewController.swift
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
- Working with REST APIs
- Networking using URLSession
- JSON parsing with Codable
- Using CoreLocation
- Implementing delegate patterns
- Structuring apps using MVC architecture
