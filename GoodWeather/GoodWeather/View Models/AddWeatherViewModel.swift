//
//  AddWeatherViewModel.swift
//  GoodWeather
//
//  Created by Elizeu RS on 28/08/22.
//

import Foundation

class AddWeatherViewModel {
  
  func addWeather(for city: String, @escaping(WeatherViewModel) -> Void) {
    
    let weatherURL = Constants.Urls.urlForWeatherByCity(city: city)
    
    let weatherResource = Resource<WeatherResponse>(url: weatherURL) { data in
      let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
      return weatherResponse
    }
    
    Webservice().load(resource: weatherResource) { (result) in
      
      if let weatherResource = result {
        let vm = AddWeatherViewModel(weather: weatherResource)
        completion(vm)
      }
    }
  }
}
