//
//  StockListViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 31/08/22.
//

import Foundation

class StockListViewModel: ObservableObject {
  
  var searchTerm: String = ""
  @Published var stocks: [StockViewModel] = [StockViewModel]()
  
  func load() {
    fetchStocks()
  }
  
  private func fetchStocks() {
    
    Webservice().getStocks { stocks in
      if let stocks = stocks {
        DispatchQueue.main.async {
          self.stocks = stocks.map(StockViewModel.init)
        }
      }
    }
  }
}
