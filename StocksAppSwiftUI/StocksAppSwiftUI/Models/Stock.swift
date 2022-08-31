//
//  Stock.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 31/08/22.
//

import Foundation

struct Stock: Decodable {
  let symbol: String
  let description: String
  let price: Double
  let change: String
}
