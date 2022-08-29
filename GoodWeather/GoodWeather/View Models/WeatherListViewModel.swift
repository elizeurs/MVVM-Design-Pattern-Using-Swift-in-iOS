//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Elizeu RS on 28/08/22.
//

import Foundation

class WeatherListViewModel {
  
  private var weatherViewModels = [WeatherViewModel]()
  
  func addWeatherViewModel(_ vm: WeatherViewModel) {
    weatherViewModels.append(vm)
  }
  
  func numberOfRows(_ section: Int) -> Int {
    return weatherViewModels.count
  }
  
  func modelAt(_ index: Int) -> WeatherViewModel {
    return weatherViewModels[index]
  }
}

class WeatherViewModel {
  
  let weather: WeatherResponse
  
  init(weather: WeatherResponse) {
    self.weather = weather
  }
  
  var city: String {
    return weather.name
  }
  
  var temperature: Double {
    return weather.main.temp
  }
}
