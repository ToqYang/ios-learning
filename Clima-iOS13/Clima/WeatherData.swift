//
//  WeatherData.swift
//  Clima
//
//  Created by Santiago Toquica Yanguas on 5/08/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    var description: String
    var id: Int
}
