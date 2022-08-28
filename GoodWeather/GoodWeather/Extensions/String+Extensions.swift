//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Elizeu RS on 28/08/22.
//

import Foundation

extension String {
  
  // you can scape/skip(?) url. example: in case of cities w/ 2 names, like los angeles.
  func escaped() -> String {
    return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
  }
}
