//
//  AddCoffeeOrderViewModel.swift
//  HotCoffee
//
//  Created by Elizeu RS on 22/08/22.
//

import Foundation

struct AddCoffeeOrderViewModel {
  
  var name: String?
  var email: String?
  
  var types: [String] {
    return CoffeeType.allCases.map{ $0.rawValue.capitalized }
  }
  
  var sizes: [String] {
    return CoffeeSize.allCases.map { $0.rawValue.capitalized }
  }
}
