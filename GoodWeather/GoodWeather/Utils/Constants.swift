//
//  Constants.swift
//  GoodWeather
//
//  Created by Elizeu RS on 28/08/22.
//

import Foundation

struct Constants {
  
  struct Urls {
    
    static func urlForWeatherByCity(city: String) -> URL {
      
      // get the default settings for temperature
       let userDefaults = UserDefaults.standard
       let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
      
      return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=7851ccae79e76935f159a49f6be64336&units=\(unit)")!
    }
  }
}
