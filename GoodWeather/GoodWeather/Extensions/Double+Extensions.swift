//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Elizeu RS on 29/08/22.
//

import Foundation

extension Double {
  
  func formatAsDegree() -> String {
    return String(format: "%.0fº", self)
  }
}
