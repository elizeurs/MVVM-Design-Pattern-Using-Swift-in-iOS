//
//  WeatherListTableViewController.swift
//  GoodWeather
//
//  Created by Elizeu RS on 25/08/22.
//

import Foundation
import UIKit

class WeatherListTableViewController: UITableViewController, AddWeatherDelegate {
  
  private var weatherListViewModel = WeatherListViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationController?.navigationBar.prefersLargeTitles = true
  }
  
  func addWeatherDidSave(vm: WeatherViewModel) {
    weatherListViewModel.addWeatherViewModel(vm)
    self.tableView.reloadData()
//    print(vm)
  }
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return weatherListViewModel.numberOfRows(section)
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
    
    let weatherVM = weatherListViewModel.modelAt(indexPath.row)
    
    cell.configure(weatherVM)
    
//    cell.cityNameLabel?.text = "Houston"
//    cell.temperatureLabel?.text = "70°"
    
    return cell
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "AddWeatherCityViewController" {
      prepareSegueForAddWeatherCityViewController(segue: segue)
    } else if segue.identifier == "SettingsTableViewController" {
      prepareSegueForSettingsTableViewController(segue: segue)
    }
  }
  
  private func prepareSegueForSettingsTableViewViewController(segue: UIStoryboardSegue) {
    
    guard let nav = segue.destination as? UINavigationController else { fatalError("NavigationController not found")
    }
    
    guard let settingsTVC = nav.viewControllers.first as? SettingsTableViewController else { fatalError("SettingsTableViewController not found")
    }
    
    settingsTVC.delegate = self
    
  }
  
  func prepareSegueForAddWeatherCityViewController(segue: UIStoryboardSegue) {
    
    guard let nav = segue.destination as? UINavigationController else {
      fatalError("NavigationController not found")
    }
    
    guard let addWeatherCityVC = nav.viewControllers.first as? AddWeatherCityViewController else {
      fatalError("AddWeatherCityController not found")
    }
  }
}

extension WeatherListTableViewController: SettingsDelegate {
  
  func settingsDone(vm: SettingsViewModel) {
    
  }
}
