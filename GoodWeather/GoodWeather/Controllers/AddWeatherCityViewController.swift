//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Elizeu RS on 25/08/22.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
  
  @IBOutlet weak var cityNameTextField: UITextField!
  
  @IBAction func saveCityButtonPressed() {
    
    if let city = cityNameTextField.text {
      let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&APPID=7851ccae79e76935f159a49f6be64336&units=imperial")!
      
      let weatherResource = Resource<Any>(url: weatherURL) { data in
        
        return data
      }
      
      Webservice().load(resource: weatherResource) { result in
        
      }
    }
  }
  
  @IBAction func close() {
    self.dismiss(animated: true, completion: nil)
  }
}
