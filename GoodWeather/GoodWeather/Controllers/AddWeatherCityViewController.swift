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
    
  }
  
  @IBAction func close() {
    self.dismiss(animated: true, completion: nil)
  }
}
