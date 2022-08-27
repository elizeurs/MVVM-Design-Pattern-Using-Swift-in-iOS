//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Elizeu RS on 27/08/22.
//

import Foundation

struct WeatherResponse: Decodable {
  let main: Weather
}

struct Weather: Decodable {
  let temp: Double
  let humidity: Double
}
