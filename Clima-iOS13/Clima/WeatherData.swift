//
//  WeatherData.swift
//  Clima
//
//  Created by Vlad Sakharov on 2026-02-17.
//  Copyright © 2026 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable{
    let id: Int
}
